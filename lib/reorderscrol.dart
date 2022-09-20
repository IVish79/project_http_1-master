import 'package:flutter/material.dart';


class reorderscrol extends StatefulWidget {
  const reorderscrol({Key? key}) : super(key: key);

  @override
  State<reorderscrol> createState() => _reorderscrolState();
}

class _reorderscrolState extends State<reorderscrol> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ReorderableListView(
        children: List.generate(items.length, (index) {
          return ListTile(
            key: ValueKey("value $index"),
            title: Text('Item $index'),
          );
        }),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            _updateMyItems(oldIndex, newIndex);
          });
        },
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

  void _updateMyItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final ListTile item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
  }
}
