import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  List<String> selectedAnswer = [];
  void onSelectedAnswer(String answer) {
    selectedAnswer.add(answer);
    selectedAnswer.length == questions.length
        ? setState(() {
            selectedAnswer = [];
            activeScreen = 'result-screen';
          })
        : null;
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : activeScreen == 'question-screen'
            ? QuestionsScreen(onSelectedAnswer: onSelectedAnswer)
            : ResultScreen(selectedAnswers: selectedAnswer);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 0, 89, 255),
                  Colors.lightBlue,
                ]),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
