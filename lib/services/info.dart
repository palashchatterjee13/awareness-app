import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'dart:convert';
import 'package:http/http.dart';

class Info {

  static Future <dynamic> getCountries() async {
    try {
      Response res = await get(
        'https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php',
        headers:  {
        "x-rapidapi-host": "coronavirus-monitor.p.rapidapi.com",
        "x-rapidapi-key": "20e9ce3316msh90d22e4f24302a9p18d779jsnf02d34d6b29a"
        },
      ).timeout(Duration(seconds: 60));
      dynamic json = jsonDecode(res.body);
      return json;
    } catch (e) {
      return "ERROR";
    }
  }

  static Future <dynamic> getWorld() async {
    try {
      Response res = await get(
        'https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php',
        headers:  {
          "x-rapidapi-host": "coronavirus-monitor.p.rapidapi.com",
          "x-rapidapi-key": "20e9ce3316msh90d22e4f24302a9p18d779jsnf02d34d6b29a"
        },
      ).timeout(Duration(seconds: 60));
      dynamic json = jsonDecode(res.body);
      return json;
    } catch (e) {
      return "ERROR";
    }
  }

}