import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meem/cubits/cubits.dart';
import 'package:meem/uis/uis.dart';

class Home extends StatelessWidget {
  List<Widget> tabs = [HomeTab(), CreateTab(), SettingsTab()];
  @override
  Widget build(BuildContext context) {
    TabCubit tabCubit = BlocProvider.of<TabCubit>(context);
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        return tabs[index];
      },
      tabBar: CupertinoTabBar(
        onTap: (value) {
          tabCubit.changeTab(index: value);
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
