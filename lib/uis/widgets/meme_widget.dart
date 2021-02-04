import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/meme/funny_dog.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: CupertinoPopupSurface(
            isSurfacePainted: true,
          ),
        ),
      ],
    );
  }
}
