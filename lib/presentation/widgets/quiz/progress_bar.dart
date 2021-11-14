import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/logic/getx/question_controller.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:sizer/sizer.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
    @required QuestionController questionController,
  })  : _questionController = questionController,
        super(key: key);

  final QuestionController _questionController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.w, right: 9.w, top: 8.h),
      child: Container(
        height: 7.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Obx(
                () => LinearPercentIndicator(
                  width: 50.w,
                  animation: true,
                  lineHeight: 2.5.h,
                  animationDuration: 800,
                  percent: 0.05 * _questionController.questionNumber.value,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.greenAccent,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 7.w),
              child: Obx(
                () => RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "${_questionController.questionNumber.value}/",
                      style: TextStyle(
                        fontSize: 14.5.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                      ),
                    ),
                    TextSpan(
                      text: "${_questionController.questions.length}",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
