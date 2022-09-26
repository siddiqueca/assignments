import 'package:flutter/material.dart';

void main() {
  runApp(const MyTable());
}

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          const Text(
            'Table',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          DataTable(
            columns: const [
              DataColumn(label: Text('Course')),
              DataColumn(label: Text('College')),
              DataColumn(label: Text('Branch'))
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('B.Tech')),
                DataCell(Text('MMMUT')),
                DataCell(Text('CSE'))
              ]),
              DataRow(cells: [
                DataCell(Text('B.Tech')),
                DataCell(Text('HBTU')),
                DataCell(Text('IT'))
              ]),
              DataRow(cells: [
                DataCell(Text('B.Tech')),
                DataCell(Text('IET')),
                DataCell(Text('ME'))
              ])
            ],
          ),
        ],
      ),
    );
  }
}
