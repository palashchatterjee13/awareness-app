import 'package:flutter/material.dart';

class Licenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DataTable(
          columns: [
            DataColumn(
              label: Center(child: Text("licenses"))
            )
          ],
          rows: [
            DataRow(
                cells: [
                  DataCell(Text("""
Montserrat Font license""")),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("""
Freepik Image licenses""")),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("""
Flaticon Icon licenses""")),
                ]
            )
          ],
        ),
      ),
    );
  }
}


