import 'package:app/modals/widgets/appView.dart';
import 'package:app/modals/widgets/homeButton.dart';
import 'package:app/modals/widgets/infoPage.dart';
import 'package:flutter/material.dart';

class SymptomsScreen extends StatefulWidget {
  @override
  _SymptomsScreenState createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff0f4),
      body: Stack(
        children: <Widget>[
          AppView(
            heading: "Symptoms",
          pages: <Widget>[
            InfoPage(
              icon: "symptoms/fever",
              heading: "Fever",
              info: "Common",
            ),
            InfoPage(
              icon: "symptoms/dry-cough",
              heading: "Dry cough",
              info: "Common",
            ),
            InfoPage(
              icon: "symptoms/tiredness",
              heading: "Tiredness",
              info: "Common",
            ),
            InfoPage(
              icon: "symptoms/aches-and-pains",
              heading: "Aches and pains",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/sore-throat",
              heading: "Sore throat",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/diarrhoea",
              heading: "Diarrhoea",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/conjunctivitis",
              heading: "Conjunctivitis",
              info: "Less Common, includes red or pink eyes",
            ),
            InfoPage(
              icon: "symptoms/headache",
              heading: "Headache",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/loss-of-taste",
              heading: "Loss of taste",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/loss-of-smell",
              heading: "Loss of smell",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/rashes",
              heading: "Rashes",
              info: "Less Common",
            ),
            InfoPage(
              icon: "symptoms/shortness-of-breath",
              heading: "Shortness of breath",
              info: "Serious symptom",
            ),
            InfoPage(
              icon: "symptoms/chest-pain",
              heading: "Chest pain",
              info: "Serious symptom",
            ),
            InfoPage(
              icon: "symptoms/loss-of-speech",
              heading: "Loss of Speech",
              info: "Serious symptom",
            ),
            InfoPage(
              icon: "symptoms/loss-of-movement",
              heading: "Loss of Movement",
              info: "Serious symptom",
            ),
          ],),
          HomeButton(),
        ],
      ),
    );
  }
}