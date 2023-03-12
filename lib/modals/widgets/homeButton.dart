import 'package:flutter/material.dart';
import 'package:app/Drift/drift.dart';

class HomeButton extends StatefulWidget {
  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  Color c = Color(0xffff7690);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -paddingTop(context) + 5,
      left: -paddingTop(context) + 5,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        onTapDown: (e) {
          setState(() {
            c = Color(0xffff5f7f);
          });
        },
        onTapUp: (e) {
          setState(() {
            c = Color(0xffff7690);
          });
        },
        onTapCancel: () {
          setState(() {
            c = Color(0xffff7690);
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          height: screenWidthPercent(32, context),
          width: screenWidthPercent(32, context),
          decoration: BoxDecoration(
            color: c,
            borderRadius:
            BorderRadius.all(Radius.circular(screenWidth(context))),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}