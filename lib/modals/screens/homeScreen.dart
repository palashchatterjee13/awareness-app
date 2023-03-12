import 'package:app/services/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../Drift/drift.dart';

import 'package:app/modals/widgets/home/homeCard.dart';
import 'package:app/modals/widgets/home/statusCard.dart';
import '../widgets/home/appBar.dart';

String loadedInfo = "";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double appBarSize = 220;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Widget show = LoadStat();

  dynamic getInfo() async {
    dynamic json = await Info.getWorld();
    setState(() {
      if (json == 'ERROR') {
        show = NetError();
      } else {
        show = StatusCard(
          infected: json['total_cases'],
          recovered: json['total_recovered'],
          deaths: json['total_deaths'],
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: Color(0xfffff0f4),
      drawer: SafeArea(
        child: Drawer(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(
                  height: screenHeightPercent(30, context)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/menu.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeightPercent(5, context)),
              child: Text(
                "Designed and Developed with ❤ by",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.5,
                  fontFamily: "Montserrat",
                  letterSpacing: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeightPercent(2, context)),
              child: Text(
                "Palash Chatterjee",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                  letterSpacing: 1.2,
                  color: Colors.redAccent,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/licenses');
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: screenHeightPercent(40, context)),
                  child: Text(
                    "Show Licenses",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      color: Colors.blueAccent,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: screenHeightPercent(2, context)),
                child: Text(
                  "version 1.0.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: paddingTop(context) + appBarSize - 20,
            left: 0,
            child: Container(
              color: Color(0x00ffffff),
              width: screenWidth(context),
              height: screenHeightSub(
                  paddingTop(context) + appBarSize - 20, context),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  show,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      HomeCard(
                        label: "Symptoms",
                        icon: "symptoms",
                        onTap: () {
                          Navigator.pushNamed(context, '/symptoms');
                        },
                      ),
                      HomeCard(
                        label: "Prevention",
                        icon: "prevention",
                        onTap: () {
                          Navigator.pushNamed(context, '/prevention');
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      HomeCard(
                        label: "Statistics",
                        icon: "statistics",
                        onTap: () {
                          Navigator.pushNamed(context, '/stat');
                        },
                      ),
                      HomeCard(
                        label: "Covid-19 FAQs",
                        icon: "faqs",
                        onTap: () {
                          Navigator.pushNamed(context, '/faq');
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: CustomAppBar(
                onMenuIconTap: () {
                  _drawerKey.currentState.openDrawer();
                },
                onEaster: () {
                  Navigator.pushNamed(context, '/easter');
                }
              )),
        ],
      ),
    );
  }
}

class NetError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: screenWidth(context) - 40,
        height: screenWidthPercent(20, context),
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
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: screenWidthPercent(70, context),
                child: Text(
                  "Network Error, failed to load World Statistics",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, letterSpacing: 0.8, color: Colors.grey[700]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(
                  Icons.refresh,
                  size: 27,
                  color: Color(0xffff7690),
                ),
                splashColor: Color(0xffff7690),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoadStat extends StatefulWidget {
  @override
  _LoadStatState createState() => _LoadStatState();
}

class _LoadStatState extends State<LoadStat> {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: screenWidth(context) - 40,
        height: screenWidthPercent(20, context),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitThreeBounce(
              size: 22,
              color: Color(0xffff7690),
            ),
          ],
        ),
      ),
    );
  }
}
