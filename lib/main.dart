/*
* main.dart is the entry point of the app
* main.dart contains the main() function
* the main() function is automatically called when the code is compiled
* the main() function calls the runApp(Widget app) function
* the runApp(Widget app) function takes in <Widget> app parameter
* the app parameter is of widget type and contains the widget tree that builds the app
*/

/*
* In Drift we pass a <Drift>.run() function in the runApp(Widget app) function
* the <Drift>.run() function returns a <StatefulWidget> DriftApp
* the <StatefulWidget> DriftApp builds a MaterialApp()
* this MaterialApp() contains the widget tree for the app
*/

/*
* In the code below we are using an instance <Drift> app of the Drift Class
* then the app.run() function is called inside the run app
* the app.run() returns a DriftApp()
* the DriftApp() builds a MaterialApp()
*/

import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(app.run());
}