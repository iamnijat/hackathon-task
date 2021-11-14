

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IntroTitle extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromRGBO(43, 126, 135, 1),
        fontSize: 29.3.sp,
        fontWeight: FontWeight.bold,
        fontFamily: "Raleway",
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText("InterrUP"),
        ],
        isRepeatingAnimation: false,
      ),
    );
  }
}
