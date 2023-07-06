import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/styled_text.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          children: [
            Image(
              image: AssetImage('assets/images/quiz-logo.png'),
              width: 280,
            ),
            SizedBox(
              height: 60,
            ),
            StyledText(
              text: 'Learn Flutter the fun way!',
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: startQuiz,
              child: Text(
                'Start Quiz',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void startQuiz() {}
