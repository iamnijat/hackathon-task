
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class IntroSlider extends StatefulWidget {
  const IntroSlider({Key key}) : super(key: key);

  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider>
    with SingleTickerProviderStateMixin {
  final Tween<double> _scaleTween = Tween<double>(begin: 1, end: 1.4);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: _scaleTween,
      duration: const Duration(seconds: 6),//seconds : 6
      builder: (context, scale, child) {
        return Transform.scale(scale: scale, child: child);
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 9.5.h, left: 18.5.w, right: 15.5.w
        ),
        child: Center(
          child: Container(
            width: 72.5.w,
            height: 24.5.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/undraw_Personal_goals_re_iow7.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
