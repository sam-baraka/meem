import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meem/cubits/cubits.dart';
import 'package:meem/uis/uis.dart';

class Home extends StatelessWidget {
  //List of the widget to appear as the main screen content
  final List<Widget> tabs = [HomeTab(), CreateTab(), SettingsTab()];
  final List<String> tabTitles = ['Home', 'Create', 'Settings'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        middle: Text(
          tabTitles[context.watch<TabCubit>().state],
          style: TextStyle(
              color: context.watch<ThemeCubit>().state == ThemeData.dark()
                  ? Colors.white
                  : Colors.black),
        ),
      ),
      //Show the tabs according to the value in [TabCubit()] state
      body: tabs[context.watch<TabCubit>().state],
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: context.watch<TabCubit>().state,
        onTap: (value) {
          //Change the value based [TabCubit()] state
          context.read<TabCubit>().changeTab(index: value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add_circled), label: "Create"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
