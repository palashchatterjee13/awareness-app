import 'package:flutter/material.dart';
import 'package:app/Drift/drift.dart';

class CustomAppBar extends StatefulWidget {

  final void Function() onMenuIconTap;
  final void Function() onEaster;

  CustomAppBar({@required this.onMenuIconTap, @required this.onEaster});

  @override
  _CustomAppBarState createState() => _CustomAppBarState(
      onMenuIconTap: onMenuIconTap
  );
}

class _CustomAppBarState extends State<CustomAppBar> {

  final void Function() onMenuIconTap;

  _CustomAppBarState({@required this.onMenuIconTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: paddingTop(context) + 220,
        width: screenWidth(context),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(70, 50),
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(70, 50),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffffe6f0),
                        blurRadius: 7,
                        spreadRadius: 2,
                        offset: Offset(-5, 10))
                  ],
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/medical.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
              Positioned(
                top: 10,
                left: 10,
                child: GestureDetector(
                  onTap: onMenuIconTap,
                  child: Opacity(
                    opacity: 0.55,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
//                    color: Colors.redAccent,
                        image: DecorationImage(
                          image: AssetImage("lib/assets/icons/menu.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: widget.onEaster,
                  child: Opacity(
                    opacity: 0.55,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
//                    color: Colors.redAccent,
                        image: DecorationImage(
                          image: AssetImage("lib/assets/icons/easter.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
