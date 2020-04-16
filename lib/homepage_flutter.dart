import 'package:flutter/material.dart';

//my own imports
import 'package:loginsignuptemp20/homepage_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// Call this widget like this in the home property of the Scaffold like this: [ home: MyHomePage(title: 'Flutter Demo Page') ]




/*
* NOTES:
* source of note: https://medium.com/flutter-community/widget-state-buildcontext-inheritedwidget-898d671b7956
* In Flutter, almost everything is a Widget.
* Think of a Widget as a visual component (or a component that interacts with the visual aspect of an application).
* A widget that contains other widgets is called parent Widget (or Widget container).
* Widgets which are contained in a parent Widget are called children Widgets.
*
* A BuildContext is nothing else but a reference to the location of a Widget within the tree structure of all the Widgets which are built.
* In short, think of a BuildContext as the part of Widgets tree where the Widget is attached to this tree.
* A BuildContext only belongs to one widget.
*
* A stateless widget cannot be redrawn based on any events or user actions. Which means it can only be drawn once when the Widget is loaded/built
* The lifecycle of such Stateless widget is straightforward:
       - initialization
       - rendering via build()
*
*  State
*   is the set of data held by a Widget which may vary during the lifetime of this Widget
*   it defines the “behavioural” part of a StatefulWidget instance.defines the “behavioural” part of a StatefulWidget instance.
*   Examples of stateful widgets include a list of Checkboxes that the user can select or a Button which is disabled depending on a condition.
*           Notion of State
*               It holds information aimed at interacting / interfering with the Widget in terms of:
                    -behavior
                    -layout
*           Any changes which is applied to a State forces the Widget to rebuild.
*
*   Stateless or Stateful Widget?
*     This is a question that many developers need to ask themselves: “do I need my Widget to be Stateless or Stateful?”
*     ask yourself: In the lifetime of my widget, do I need to consider a variable that will change and when changed, will force the widget to be rebuilt?
*     If the answer to the question is: yes, then you need a Stateful widget, otherwise, you need a Stateless widget.
*
*     Examples of stateful widgets include: a list of checkboxes and a screen with a Form.
*
*
*   Widget unique identity — Key
*   In Flutter, each Widget is uniquely identified.
*   This unique identity is defined by the framework at build/rendering time.
*
*
*
*
* source of note: https://medium.com/flutter-community/widget-state-buildcontext-inheritedwidget-898d671b7956
*  */