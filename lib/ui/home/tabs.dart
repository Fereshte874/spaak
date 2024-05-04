import 'package:flutter/material.dart';
import 'package:spaak/ui/home/homePage.dart';
import 'package:spaak/ui/list.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _page = [
    const MyHomePage(title: "Spaak"),
    MyList(),
    MyList()
  ];
  final List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
    const BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spaak"),
      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: items),
    );
  }
}
