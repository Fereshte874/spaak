import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  List<Widget> _initListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        leading: Text("$i"),
        title: const Text("这是个标题"),
        subtitle: const Text("这是描述"),
        trailing: const Icon(Icons.chevron_right),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initListData());
  }
}
