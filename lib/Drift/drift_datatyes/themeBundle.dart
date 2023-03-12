import 'package:flutter/cupertino.dart';

class ThemeBundle {
  String themeBundleName;
  Map<String,dynamic> themeBundleData;

  ThemeBundle({@required final String name, @required final Map<String,dynamic> data}) {
    this.themeBundleName = name;
    this.themeBundleData = data;
  }

  dynamic readTheme(String name) {
    return themeBundleData[name];
  }

  String name() {
    return themeBundleName;
  }
}