import 'package:flutter/material.dart';

import 'package:loginsignuptemp20/pages/RootPage.dart';
import 'package:loginsignuptemp20/services/authentication.dart';
import 'package:loginsignuptemp20/pages/home_page.dart';

//my own imports
//import 'pages/login_signup_page.dart';
//import 'homepage_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.indigo,
      ),
        //new RootPage(auth: new Auth())
      home: RootPage(auth: new Auth())
    );
  }
}


