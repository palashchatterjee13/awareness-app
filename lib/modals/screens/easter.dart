import 'package:app/Drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EasterEgg extends StatefulWidget {
  @override
  _EasterEggState createState() => _EasterEggState();
}

class _EasterEggState extends State<EasterEgg> {
  Color c = Colors.blueAccent;
  List <Color> colors= [Colors.redAccent,Colors.pinkAccent,Colors.blueAccent,Colors.amber,Colors.purpleAccent,Colors.lightGreen,Colors.green,Colors.indigo,Colors.yellowAccent,Colors.deepOrange,Colors.orangeAccent,Colors.purpleAccent,Colors.orange,Colors.purple];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001156),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: c.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(screenWidth(context))),
                  onTap: () {
                    setState(() {
                      c = (colors..shuffle()).first;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: screenWidthPercent(55, context),
                    width: screenWidthPercent(55, context),
                    child: Image.asset("lib/assets/icons/easter.png", color: c,),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            width: screenWidth(context),
            child: Container(
              child: Text("You found the Easter Egg", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.8,
                color: Colors.blueAccent,
                fontFamily: "Montserrat"
              ),),
            ),
          )
        ],
      ),
    );
  }
}
