import 'package:flutter/material.dart';
import 'package:app/Drift/drift.dart';

class StatusCard extends StatefulWidget {

  final String infected;
  final String recovered;
  final String deaths;

  StatusCard({@required this.infected, @required this.recovered, @required this.deaths,});

  @override
  _StatusCardState createState() => _StatusCardState(
    infected: infected,
    recovered: recovered,
    deaths: deaths,
  );
}

class _StatusCardState extends State<StatusCard> {

  final String infected;
  final String recovered;
  final String deaths;

  _StatusCardState({@required this.infected, @required this.recovered, @required this.deaths,});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: screenWidth(context) - 40,
        height: screenWidthPercent(30, context),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              color: Color(0xfff9eaef),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffffe6f0),
                  blurRadius: 5.5,
                  spreadRadius: 1,
                  offset: Offset(5, 5))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StatusCardInfo(
              label: "Infected",
              icon: "infected",
              count: infected,
            ),
            StatusCardInfo(
              label: "Recovered",
              icon: "recovered",
              count: recovered,
            ),
            StatusCardInfo(
              label: "Deaths",
              icon: "deaths",
              count: deaths,
            ),
          ],
        ),
      ),
    );
  }
}

class StatusCardInfo extends StatelessWidget {

  final String label;
  final String icon;
  final String count;

  StatusCardInfo({@required this.label, @required this.icon, @required this.count,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidthPercent(28, context),
      height: screenWidthPercent(35, context),
      child: Stack(
        children: <Widget>[
          Center(
              child: Container(
                  margin: EdgeInsets.only(bottom: 35),
                  child: Image.asset(
                    "lib/assets/icons/$icon.png",
                    scale: 0.75,
                    height:
                    screenWidthPercent(10, context),
                    width:
                    screenWidthPercent(10, context),
                  ))),
          Positioned(
            bottom: 26,
            left: 0,
            right: 0,
            child: Text(
              count,
              textAlign: TextAlign.center,
              style: TextStyle(
//                                      fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Color(0xff747474)),
            ),
          ),
          Positioned(
            bottom: 7,
            left: 0,
            right: 0,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                //fontFamily: "Montserrat",
                  fontSize: 12.5,
                  letterSpacing: 0.5,
                  color: Color(0xff747474)),
            ),
          )
        ],
      ),
    );
  }
}

