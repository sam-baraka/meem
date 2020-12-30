import 'package:flutter/material.dart';
import 'package:meem/uis/uis.dart';

void main() {
  runApp(MeemApp());
}
class MeemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
    );
  }
}
