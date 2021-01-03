import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meem/uis/intro/intro_screen.dart';

void main() {
  runApp(MeemApp());
}

class MeemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: IntroScreen(),
    );
  }
}
