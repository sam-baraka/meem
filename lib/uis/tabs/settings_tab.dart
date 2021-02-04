import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:meem/cubits/cubits.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ListTile(
          title: Text("Dark theme"),
          subtitle: Text("Toggle between dark and light theme"),
          trailing: CupertinoSwitch(
            value: context.watch<ThemeCubit>().state == ThemeData.dark(),
            onChanged: (value) {
              context.read<ThemeCubit>().changeTheme(value);
            },
          ),
        )
      ],
    );
  }
}
