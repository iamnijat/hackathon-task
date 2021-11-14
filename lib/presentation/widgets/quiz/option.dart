import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hackathon_app/logic/getx/question_controller.dart';

import 'package:sizer/sizer.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return const Color(0xFF6AC259);
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return const Color.fromRGBO(253, 87, 76, 1);
              }
            }
            return Colors.white;
          }

          /*IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }*/

          return GestureDetector(
            onTap: press,
            child: Container(
              margin: index != 0
                  ? const EdgeInsets.only(
                      top: 25,
                      left: 30,
                      right: 30,
                    )
                  : const EdgeInsets.only(top: 40, left: 30, right: 30),
              padding:
                  EdgeInsets.only(left: 9.w, right: 9.w, top: 2.h, bottom: 2.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: getTheRightColor(),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                              color: getTheRightColor() == Colors.white
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 14.5.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
