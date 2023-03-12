import 'package:app/Drift/drift_classes/drift_device.dart';
import 'package:app/modals/widgets/homeButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/services/info.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StatScreen extends StatefulWidget {
  @override
  _StatScreenState createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  Widget show = LoadingCard();

  dynamic getInfo() async {
    dynamic json = await Info.getCountries();
    setState(() {
      if (json == 'ERROR') {
        show = ErrorCard();
      } else {
        show = InfoTable(json);
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
      backgroundColor: Color(0xfffff0f4),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            width: screenWidth(context),
            child: Container(
              margin: EdgeInsets.only(
                  top: paddingTop(context) + screenHeightPercent(5, context),
                  left: 0),
              child: Column(children: <Widget>[
                Text(
                  "COVID-19",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.8,
                      color: Color(0xff2d2d2d)),
                ),
                SizedBox(
                  height: screenHeightPercent(7, context),
                ),
                Text(
                  "Statistics",
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
                show,
              ]),
            ),
          ),
          HomeButton(),
        ],
      ),
    );
  }
}

class InfoTable extends StatefulWidget {

  final dynamic json;

  InfoTable(this.json);

  @override
  _InfoTableState createState() => _InfoTableState();
}

class _InfoTableState extends State<InfoTable> {
  List<DataRow> rows = [];
  int r;

  @override
  Widget build(BuildContext context) {

    //print(widget.json['countries_stat']);

    rows = [];
    r=1;
    widget.json['countries_stat'].forEach((item){
      // print(item);
      rows.add(DataRow(
          cells: [
            DataCell(Text(r.toString())),
            DataCell(Text(item['country_name'])),
            DataCell(Text(item['cases'])),
            DataCell(Text(item['total_recovered'])),
            DataCell(Text(item['deaths'])),
          ]
      ));
      r++;
    });

    return Container(
      width: screenWidthPercent(100, context),
      height: screenHeightPercent(67, context),
      margin: EdgeInsets.symmetric(horizontal: screenWidthPercent(8, context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: DataTable(
            columns: [
              DataColumn(
                label: Text("Rank"),
              ),
              DataColumn(
                label: Text("Location"),
              ),
              DataColumn(
                label: Text("Cases"),
                numeric: true,
              ),
              DataColumn(
                label: Text("Recovered"),
              ),
              DataColumn(
                label: Text("Deaths"),
              ),
            ],
            rows: rows,
          ),
        ),
      ),
    );
  }
}

class ErrorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
        EdgeInsets.only(top: screenHeightPercent(25, context)),
        width: screenWidthPercent(80, context),
        padding: EdgeInsets.only(top: 0),
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Color(0xfff9eaef),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffffe6f0),
                  blurRadius: 5.5,
                  spreadRadius: 2,
                  offset: Offset(1, 1))
            ]),
        child: Row(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: screenWidthPercent(60, context),
                child: Text(
                  "Network Error, failed to load Statistics",
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
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/stat');
                },
              ),
            )
          ],
        ));
  }
}

class LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
        EdgeInsets.only(top: screenHeightPercent(25, context)),
        width: screenWidthPercent(80, context),
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Color(0xfff9eaef),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffffe6f0),
                  blurRadius: 5.5,
                  spreadRadius: 2,
                  offset: Offset(1, 1))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitDualRing(
              color: Color(0xffff7690),
              size: 20,
              lineWidth: 2,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Loading",
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            )
          ],
        ));
  }
}
