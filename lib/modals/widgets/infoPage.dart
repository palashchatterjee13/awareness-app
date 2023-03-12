import 'package:app/Drift/drift_classes/drift_device.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {

  final String icon;
  final String heading;
  final String info;

  InfoPage({@required this.icon, @required this.heading, @required this.info, });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      // color: Colors.purpleAccent,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: screenWidthPercent(20, context),
            top: screenWidthPercent(10, context),
            child: Container(
              height: screenWidthPercent(60, context),
              width: screenWidthPercent(50, context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "lib/assets/images/$icon.png"),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            left: screenWidthPercent(5, context),
            top: screenWidthPercent(65, context),
            width: screenWidthPercent(75, context),
            child: Container(
              height: screenHeightPercent(30, context),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Text(
                    heading,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    info,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
