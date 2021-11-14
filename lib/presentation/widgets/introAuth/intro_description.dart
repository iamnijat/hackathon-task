import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IntroDescription extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w),
      child: DelayedDisplay(
        delay: const Duration(seconds: 4),
        fadingDuration: const Duration(seconds: 1),
        child: Text(
            "If you find your child playing silly games and watching social media all day, this app is for you",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromRGBO(137, 137, 137, 1),
              fontSize: 21.5.sp,
              fontWeight: FontWeight.w400,
              fontFamily: "RobotoCondensed",
            )),
      ),
    );
  }
}
