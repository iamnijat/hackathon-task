import 'package:flutter/material.dart';
import 'package:hackathon_app/logic/getx/question_controller.dart';

import 'package:sizer/sizer.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
    @required QuestionController questionController,
  })  : _questionController = questionController,
        super(key: key);

  final QuestionController _questionController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: ElevatedButton(
        child: Text(
          'Next',
          style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 14.5.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 2.4.h, horizontal: 9.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: _questionController.nextQuestion,
      ),
    );
  }
}
