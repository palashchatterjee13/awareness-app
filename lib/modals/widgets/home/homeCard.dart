import 'package:flutter/material.dart';
import 'package:app/Drift/drift.dart';

class HomeCard extends StatefulWidget {

  final String label;
  final String icon;
  final void Function() onTap;

  HomeCard({@required this.label, @required this.icon, @required this.onTap,});

  @override
  _HomeCardState createState() => _HomeCardState(
    label: label,
    icon: icon,
    onTap: onTap,
  );
}

class _HomeCardState extends State<HomeCard> {

  final String label;
  final String icon;
  final void Function() onTap;
  double spread = 1.5;
  Color color = Color(0xffffe6f0);

  _HomeCardState({@required this.label, @required this.icon, @required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onTapDown: (e) {
        setState(() {
          spread = 3;
          color = Color(0xffffdeeb);
        });
      },
      onTapUp: (e) {
        setState(() {
          spread = 1.5;
          color = Color(0xffffe6f0);
        });
      },
      onTapCancel: () {
        setState(() {
          spread = 1.5;
          color = Color(0xffffe6f0);
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: screenWidthPercent(50,context)-30,
        height: screenWidthPercent(40, context),
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              color: Color(0xfff9eaef),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [BoxShadow(
                color: color,
                blurRadius: 5.5,
                spreadRadius: spread,
                offset: Offset(7,7)
            )]
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: screenWidthPercent(3,context)+2,
              left: screenWidthPercent(3,context)+2,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  "lib/assets/icons/$icon.png",
                  height: screenWidthPercent(12.5, context),
                  width: screenWidthPercent(12.5, context),
                ),
              ),
            ),
            Positioned(
              bottom: screenWidthPercent(3,context),
              left: screenWidthPercent(3,context)+2,
              child: Text(label,style: TextStyle(
                //fontFamily: "Montserrat",
                  fontSize: 15,
                  letterSpacing: 0.8,
                  color: Color(0xff747474)
              ),),
            )
          ],
        ),
      ),
    );
  }
}
