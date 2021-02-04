import 'package:flutter/material.dart';
import 'package:meem/uis/widgets/meme_widget.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [MemeWidget()],
    );
  }
}
