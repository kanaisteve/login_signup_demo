import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginsignuptemp20/pages/login_signup_page.dart';

class LoginSignupUIComponents extends StatefulWidget {
  final String title;

  LoginSignupUIComponents ({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class LoginSignupUIComponentsState extends State<LoginSignupUIComponents>{
  //1. Defining the LoginSignupPage states (properties)
  final _formKey =  GlobalKey<FormState>();
  bool _isLoading = false;
  bool _isLoginForm = true;

  //text field state
  String _email = '';
  String _password = '';
  String _errorMessage = '';


  //Circular Progress Bar
//Widget showCircularProgress() {
//  if (_isLoading) {
//    return Center(child: CircularProgressIndicator(),);
//  }
//  return Container(
//    height: 0.0,
//    width: 0.0,
//  );
//}

  Widget showLogo() {
    return new Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/flutter-icon.png'),
        ),
      ),
    );
  }

  Widget showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Email',
            icon: new Icon(
              Icons.mail,
              color: Colors.grey,
            )),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Password',
            icon: new Icon(
              Icons.lock,
              color: Colors.grey,
            )),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value.trim(),
      ),
    );
  }

  Widget showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
        child: SizedBox(
          height: 40.0,
          child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.blue,
            child: new Text(_isLoginForm ? 'Login' : 'Create account',
                style: new TextStyle(fontSize: 20.0, color: Colors.white)),
            onPressed: validateAndSubmit,
          ),
        ));
  }

//building a secondary button to toggle between login and signup form.
//We usd flat button instead of raised button used in primary button just to make one more distinctive than the other. Raided Button catches more attention compared to Flat Button.
  Widget showSecondaryButton() {
    return new FlatButton(
        child: new Text(
            _isLoginForm ? 'Create an account' : 'Have an account? Sign in',
            style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300)),
        onPressed: toggleFormMode);
  }

//Building a ui to display error messages to user.
//These messages could be error thrown by Firebase or invalid form imput.
  Widget showErrorMessage() {
    if (_errorMessage.length > 0 && _errorMessage != null) {
      return new Text(
        _errorMessage,
        style: TextStyle(
            fontSize: 13.0,
            color: Colors.red,
            height: 1.0,
            fontWeight: FontWeight.w300),
      );
    } else {
      return new Container(
        height: 0.0,
      );
    }
  }

  void toggleFormMode() {
    resetForm(); //clears the inputs of the TextFormField (this is kept in GlobalKey of FormState)
    setState(() {
      _isLoginForm = !_isLoginForm;
    });
  }

  Widget _showForm() {
    return new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          key: _formKey,
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              showLogo(),
              showEmailInput(),
              showPasswordInput(),
              showPrimaryButton(),
              showSecondaryButton(),
              showErrorMessage(),
            ],
          ),
        ));
  }

  void validateAndSubmit(){}
  void resetForm(){}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}