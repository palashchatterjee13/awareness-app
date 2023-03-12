import 'package:app/Drift/drift_classes/drift_device.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppView extends StatefulWidget {

  final String heading;
  final List <Widget> pages;

  AppView({@required this.heading, @required this.pages});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {

  int currentPage = 1;
  PageController controller = PageController();
  Color fill = Colors.white;
  Color stroke = Color(0xffff7690);

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: screenWidth(context),
        margin: EdgeInsets.only(top: paddingTop(context) + screenHeightPercent(5, context), left: 0),
        child: Column(
          children: <Widget>[
            Text(
              "COVID-19",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18, letterSpacing: 0.8, color: Color(0xff2d2d2d)),
            ),
            SizedBox(
              height: screenHeightPercent(7, context),
            ),
            Text(
              widget.heading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2d2d2d)),
            ),
            SizedBox(
              height: screenHeightPercent(5, context),
            ),
            Container(
              height: screenHeightSub(paddingTop(context) + screenHeightPercent(35, context), context),
              width: screenWidthPercent(88, context),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Color(0xfff9eaef),
                  width: 1,
                ),
                  boxShadow: [BoxShadow(
                      color: Color(0xfff9eaef),
                      blurRadius: 5.5,
                      spreadRadius: 1.5,
                      offset: Offset(0,0)
                  )],
              ),
              child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: controller,
                  children: widget.pages,
                  onPageChanged: (n) {
                    setState(() {
                      currentPage = n+1;
                    });
                  },
              ),
            ),
            SizedBox(height: screenHeightPercent(3, context),),
            Container(
              width: double.infinity,
              height: screenWidthPercent(90, context),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: screenWidthPercent(10, context),
                    top: 7,
                    child: Text("$currentPage of ${widget.pages.length}", style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                  Positioned(
                    right: screenWidthPercent(10, context),
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                      },
                      onTapDown: (e) {
                        setState(() {
                          fill = Color(0xffff7690);
                          stroke = Colors.white;
                        });
                      },
                      onTapUp: (e) {
                        setState(() {
                          fill = Colors.white;
                          stroke = Color(0xffff7690);
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          fill = Colors.white;
                          stroke = Color(0xffff7690);
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 250),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5
                        ),
                        decoration: BoxDecoration(
                          color: fill,
                          border: Border.all(color: stroke, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Text("Next",style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.8,
                          color: stroke,
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}