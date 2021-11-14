import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sizer/sizer.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        backgroundBlendMode: BlendMode.srcOver,
      ),
    );
  }
}
