import 'package:flutter/material.dart';
import 'package:spaak/bean.dart';

class MyList extends StatelessWidget {
  MyList({super.key});

  // List<Widget> _initListData() {
  //   List<NewsBean> newsList = [];
  //   for (var i = 1; i < 166; i++) {
  //     newsList.add(NewsBean(
  //         "标题$i", i, "https://www.scboy.cc/plugin/scboy_moj/face/sb/$i.png"));
  //   }
  //   var list = newsList.map((item) {
  //     return ListTile(
  //       leading: Image.network(item.icon),
  //       title: Text(item.title),
  //       subtitle: const Text("这是描述"),
  //       trailing: const Icon(Icons.chevron_right),
  //     );
  //   }).toList();
  //   return list;
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(children: _initListData());
  // }

  /// ListView.builder
  final List<NewsBean> newsList = [];

  void initNewsList() {
    if (newsList.isEmpty) {
      for (var i = 1; i < 166; i++) {
        newsList.add(NewsBean(
            "标题$i", i, "https://www.scboy.cc/plugin/scboy_moj/face/sb/$i.png"));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (newsList.isEmpty) {
      initNewsList();
    }
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Image.network(newsList[index].icon),
        title: Text(newsList[index].title),
        subtitle: const Text("这是描述"),
        trailing: const Icon(Icons.chevron_right),
      );
    });
  }
}
