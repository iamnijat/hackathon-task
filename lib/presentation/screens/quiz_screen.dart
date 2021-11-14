import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/logic/getx/question_controller.dart';
import 'package:hackathon_app/presentation/widgets/quiz/next_button.dart';
import 'package:hackathon_app/presentation/widgets/quiz/progress_bar.dart';
import 'package:hackathon_app/presentation/widgets/quiz/question_card.dart';


class QuizScreen extends StatefulWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Flexible(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _questionController.pageController,
              onPageChanged: _questionController.updateTheQnNum,
              scrollDirection: Axis.horizontal,
              itemCount: _questionController.questions.length,
              itemBuilder: (context, index) =>
                  QuestionCard(question: _questionController.questions[index]),
            ),
          ),
          NextButton(questionController: _questionController)
        ],
      ),
    );
  }
}
