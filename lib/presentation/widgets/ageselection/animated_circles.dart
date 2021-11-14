import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedCircles extends StatelessWidget {
  const AnimatedCircles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0.w,
      height: 25.0.h,
      child: FlareActor(
        'assets/flares/circle.flr',
        animation: "Alarm",
        // ignore: deprecated_member_use
        color: Color.fromRGBO(95, 151, 155, 1)
      ),
    );
  }
}
