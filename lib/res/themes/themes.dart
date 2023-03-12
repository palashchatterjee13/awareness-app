import '../../Drift/drift.dart';
import 'package:flutter/material.dart';

/*
* lib/res/themes/
* all the themes for the app are (and should be) defined in this folder
*/

/*
* themes.dart contains <ThemeBundle> instances
* these instances define different themes for the app
*/

/*
* themes for the app are defined by means of <ThemeBundle> instances
* any dart script defining a theme must import material.dart and drift.dart to define a theme
*
* to create a theme, instantiate a <ThemeBundle> instance and assign it to a variable with <ThemeBundle> data type
* ThemeBundle take in two names parameters to instantiate:
*
*   <String> name
*   ~ defines the name of the theme
*
*   Map <String,dynamic> data
*   ~ defines the data for the theme
*/

/*
* by default the themes.dart contains the <ThemeBundle> defaultTheme
* this defaultTheme is used as the default theme in the app.dart
*/

final ThemeBundle defaultTheme = new ThemeBundle(
    name: 'defaultTheme',
    data: {
      'appSwatch': DriftColor.makeMaterial(Colors.redAccent),
      'appBarColor': Colors.blue[700],
    }
);

/*

final ThemeBundle darkTheme = new ThemeBundle(
    name: 'darkTheme',
    data: {
      'appBarColor': Colors.black,
    }
);

*/