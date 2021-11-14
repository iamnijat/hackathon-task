import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/data/models/question_model.dart';
import 'package:hackathon_app/logic/getx/question_controller.dart';

import 'package:sizer/sizer.dart';

import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 9.w, right: 9.w, top: 10.h),
          child: Text(
            question.question,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 17.5.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                height: 2.4,
                color: Colors.black),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        ...List.generate(
          question.options.length,
          (index) => Option(
            index: index,
            text: question.options[index],
            press: () => _questionController.checkAns(question, index),
          ),
        ),
      ],
    );
  }
}
