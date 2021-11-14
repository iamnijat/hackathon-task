import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/presentation/screens/chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  bool isPointVisible = true;
  _setTimer() {
    setState(() {
      isPointVisible = !isPointVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 6.h, right: 7.w, left: 7.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 3.5.h,
                  ),
                ),
                Icon(
                  Icons.notifications_on_outlined,
                  size: 4.h,
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 5.h),
                child: Text(
                  "Points",
                  style: TextStyle(
                      color: Colors.black87,
                      height: 1.9,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h, left: 7.w, right: 7.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 17.h,
                  lineWidth: 23.0,
                  animation: true,
                  animationDuration: 1500,
                  percent: 0.7,
                  backgroundColor: const Color.fromRGBO(232, 240, 249, 1),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: const Color.fromRGBO(43, 126, 135, 1),
                ),
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text:isPointVisible ? "~ 30 minutes\n" : "",
                          style: TextStyle(
                              fontSize: 14.5.sp,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        TextSpan(
                          text: isPointVisible
                              ? "70 points" : "00:30:00",
                          style: TextStyle(
                              height: 2.1,
                              fontFamily: "Poppins",
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ]),
                    ),
                    ElevatedButton(
                      onPressed: _setTimer,
                      child: Text(
                        isPointVisible ? "Set timer" : "Cancel timer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: isPointVisible
                              ? Colors.green
                              : Colors.pinkAccent),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 6.h),
                child: Text(
                  "Diagram",
                  style: TextStyle(
                      color: Colors.black87,
                      height: 1.9,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.w),
            child: Row(
              children: [
                ClayContainer(
                  height: 300,
                  width: width * 0.8,
                  depth: 12,
                  spread: 12,
                  borderRadius: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16,
                          top: 16,
                        ),
                        child: Text(
                          "Progress Diagram",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Chart(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
