import 'package:html/parser.dart';
import 'package:html/dom.dart';

class Sample {
  void sample () {
    Document d = parse("");
    d.querySelector("").children;
  }
}