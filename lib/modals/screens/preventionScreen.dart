import 'package:app/modals/widgets/appView.dart';
import 'package:app/modals/widgets/homeButton.dart';
import 'package:app/modals/widgets/infoPage.dart';
import 'package:flutter/material.dart';

class PreventionScreen extends StatefulWidget {
  @override
  _PreventionScreenState createState() => _PreventionScreenState();
}

class _PreventionScreenState extends State<PreventionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff0f4),
      body: Stack(
        children: <Widget>[
          AppView(
            heading: "Prevention",
            pages: <Widget>[
              InfoPage(
                icon: "prevention/wash-hands",
                heading: "Wash Your Hands",
                info: "Wash your hands often, thoroughly with soap and water for atleast 20 seconds",
              ),
              InfoPage(
                icon: "prevention/wear-mask",
                heading: "Wear a Mask",
                info: "Always wear a mask when in public",
              ),
              InfoPage(
                icon: "prevention/use-sanitizer",
                heading: "Use Hand Sanitizer",
                info: "Always carry and use a hand sanitizer when in public",
              ),
              InfoPage(
                icon: "prevention/social-distancing",
                heading: "Maintain Social Distancing",
                info: "Maintain a safe distance from anyone who is coughing or sneezing",
              ),
              InfoPage(
                icon: "prevention/stay-home",
                heading: "Stay Home, Stay Safe",
                info: "Avoid unnecessary visits to public places",
              ),
            ],),
          HomeButton(),
        ],
      ),
    );
  }
}