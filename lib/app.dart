import 'package:app/modals/screens/symptomsScreen.dart';
import 'package:flutter/material.dart';
import 'modals/screens/easter.dart';
import 'modals/screens/faqScreen.dart';
import 'modals/screens/licenses.dart';
import 'modals/screens/preventionScreen.dart';
import 'modals/screens/stat.dart';
import 'res/strings/strings.dart';
import 'res/themes/themes.dart';
import 'modals/screens/homeScreen.dart';
import 'Drift/drift.dart';

Drift app = new Drift(
  app: DriftApp(),
  stringBundle: stringsEnglishInternational,
  themeBundle: defaultTheme,
);

class DriftApp extends StatefulWidget {
  @override
  _DriftAppState createState() => _DriftAppState();
}

class _DriftAppState extends State<DriftApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: app.readString('app-name'),
      theme: ThemeData(
        primarySwatch: app.readTheme('appSwatch'),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/symptoms': (context) => SymptomsScreen(),
        '/prevention': (context) => PreventionScreen(),
        '/faq': (context) => FaqScreen(),
        '/stat': (context) => StatScreen(),
        '/easter': (context) => EasterEgg(),
        '/licenses': (context) => Licenses(),
      },
    );
  }
}