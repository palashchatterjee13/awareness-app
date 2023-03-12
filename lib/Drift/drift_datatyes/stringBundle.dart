import 'package:flutter/cupertino.dart';

class StringBundle {
  String stringBundleName;
  Map<String,String> stringBundleData;

  StringBundle({@required final String name, @required final Map<String,String> data}) {
    this.stringBundleName = name;
    this.stringBundleData = data;
  }

  String readString(String name) {
    return stringBundleData[name];
  }

  String name() {
    return stringBundleName;
  }
}