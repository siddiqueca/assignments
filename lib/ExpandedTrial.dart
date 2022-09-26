import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpandedHomeNew(),
    debugShowCheckedModeBanner: false,
  ));
}

class ExpandedHomeNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Expanded(child: Center(child: Text("Application"))),
                  IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                ],
              ),
              Container(
                height: 200,
                color: Colors.black,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 200,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ),
            ],
          ),
    ));
  }
}
