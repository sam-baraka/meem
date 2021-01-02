import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        return Container(
          child: Center(child: Text("$index"),),
        );
      },
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled),label: "Create"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),label: "Settings"),
        ],
      ),
    );
  }
}
