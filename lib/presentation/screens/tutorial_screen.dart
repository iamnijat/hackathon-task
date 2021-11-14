import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/presentation/screens/score_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5.5.h, left: 5.w, right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                        size: 4.h,
                      )),
                  Text(
                    "Math Lesson",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => ScoreScreen());
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, right: 4.w, top: 3.h),
              child: LinearPercentIndicator(
                width: 85.w,
                animation: true,
                lineHeight: 2.5.h,
                animationDuration: 800,
                percent: 0.1,
                backgroundColor: Color.fromRGBO(232, 240, 249, 1),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: const Color.fromRGBO(253, 137, 137, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, right: 20.w, top: 3.h),
              child: Text(
                "Adding Fractions with like denominators",
                style: TextStyle(
                    color: Colors.black87,
                    height: 1.9,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 1.h),
              child: Text(
                "A pizza was divided into eight equal parts (slices). If Jenny ate five slices and Eric ate two slices, then what part of the pizza did they eat altogether?",
                style: TextStyle(
                    color: Colors.black87,
                    height: 1.9,
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins"),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 2.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "assets/images/math.jpeg",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 2.h),
              child: Text(
                "Jenny ate '5 eighths' of the pizza and Eric ate '2 eighths'. In each of these fractions, the unit is the denominator, eighths. Since both fractions have the same units, we can add them together. '5 eighths + 2 eighths = 7 eighths.'",
                style: TextStyle(
                    color: Colors.black87,
                    height: 1.9,
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins"),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
