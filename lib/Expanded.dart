import 'package:flutter/material.dart';

//subtitle yt video to present seminar

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpandedHome(),
  ));
}

class ExpandedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              const Expanded(
                child: Center(child: Text("Application")),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.person))
            ],
          ),
         Container(
           height: 200,
           color: Colors.blueGrey,
         ),
          Expanded(
            flex: 3,
              child: Container(
                color: Colors.green,
                child: Center(child: Text("Expanded 1")),
              )
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              child: Center(child: Text("Expanded 2")),
            )
          ),
        ],
      ),
    ));
  }
}
