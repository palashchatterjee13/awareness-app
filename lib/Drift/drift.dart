import 'package:flutter/material.dart';

import 'drift_classes/drift_console.dart';

import 'drift_datatyes/stringBundle.dart';
import 'drift_datatyes/themeBundle.dart';

export 'drift_datatyes/stringBundle.dart';
export 'drift_datatyes/themeBundle.dart';
export 'drift_classes/drift_console.dart';
export 'drift_classes/drift_device.dart';
export 'drift_classes/drift_colors.dart';

class Drift {
  Widget app;

  // app state values
  ThemeBundle appThemeBundle = new ThemeBundle(name: 'default', data: {});
  StringBundle appStringBundle = new StringBundle(name: 'default', data: {});

  // class assets
  DriftConsole console = new DriftConsole();

  // constructor
  Drift({@required Widget app, StringBundle stringBundle, ThemeBundle themeBundle}) {
    this.app = app;
    if (stringBundle != null) {
      this.appStringBundle = stringBundle;
    }
    if (themeBundle != null) {
      this.appThemeBundle = themeBundle;
    }
  }

  // theme functions
  void useThemeBundle(ThemeBundle themeBundle) {
    this.appThemeBundle = themeBundle;
  }

  dynamic readTheme(String name) {
    dynamic res = this.appThemeBundle.readTheme(name);
    if (res == null) {
      console.warn('can not read Theme Component from <ThemeBundle> with name "$name" >cnl as the key "$name" does not Exist in apps <ThemeBundle> >cnl Method: <Drift>.readTheme("$name"); ');
    }
    return res;
  }

  String themeBundleName () {
    return appThemeBundle.themeBundleName;
  }

  // string functions
  void useStringBundle(StringBundle stringBundle) {
    this.appStringBundle = stringBundle;
  }

  String readString(String name) {
    dynamic res = this.appStringBundle.readString(name);
    if (res == null) {
      res = 'null';
      console.warn('can not read String from <SringBundle> with name "$name" >cnl as the key "$name" does not Exist in apps <StringBundle> >cnl Method: <Drift>.readString("$name"); ');
    }
    return res;
  }

  String stringBundleName() {
    return appStringBundle.stringBundleName;
  }

  // app functions
  void updateApp(Widget appWidget) {
    this.app = appWidget;
  }
  Widget run() {
    return app;
  }

}

/*
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
}
*/

/*
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
}
*/