import 'package:flutter/material.dart';

class Wheelscrol extends StatefulWidget {
  const Wheelscrol({Key? key}) : super(key: key);

  @override
  State<Wheelscrol> createState() => _WheelscrolState();
}

class _WheelscrolState extends State<Wheelscrol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 75,
        children: items,
      ),

    );
  }
  final items = [
    ListTile(
      title: Text('Item 1'),
    ),
    ListTile(
      title: Text('Item 2'),
    ),
    ListTile(
      title: Text('Item 3'),
    ),
    ListTile(
      title: Text('Item 4'),
    ),
    ListTile(
      title: Text('Item 5'),
    ),
    ListTile(
      title: Text('Item 6'),
    ),
    ListTile(
      title: Text('Item 7'),
    ),
    ListTile(
      title: Text('Item 8'),
    ),
    ListTile(
      title: Text('Item 9'),
    ),
  ];

  
}
