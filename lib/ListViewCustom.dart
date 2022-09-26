import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listnw(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listnw extends StatefulWidget {
  @override
  State<Listnw> createState() => ListState();
}

class ListState extends State<Listnw> {
  List<String> shoes = ['Adidas', 'Nike', 'Puma', 'New Balance'];
  List<String> shoepics = [
    "assets/shoespics/adidas.jpeg",
    "assets/shoespics/nike.jpeg",
    "assets/shoespics/puma.jpeg",
    "assets/shoespics/newblnce.jpeg",
  ];

  void _reverse() {
    setState(() {
      shoes = shoes.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return KeepAlive(
                  data: shoes[index],
                  key: ValueKey<String>(shoes[index]),
                );
              },
              childCount: shoes.length,
              findChildIndexCallback: (Key key) {
                final ValueKey<String> valueKey = key as ValueKey<String>;
                final String data = valueKey.value;
                return shoes.indexOf(data);
              }
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => _reverse(),
              child: const Text('Reverse items'),
            ),
          ],
        ),
      ),
    );
  }
}
class KeepAlive extends StatefulWidget {
  const KeepAlive({
    required Key key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  State<KeepAlive> createState() => _KeepAliveState();
}

class _KeepAliveState extends State<KeepAlive> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Text(widget.data);
  }
}