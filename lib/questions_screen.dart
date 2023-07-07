import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'question title is here...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            onPressed: () {},
            child: const Text('Answer 1'),
          ),
          AnswerButton(
            onPressed: () {},
            child: const Text('Answer 2'),
          ),
          AnswerButton(
            onPressed: () {},
            child: const Text('Answer 3'),
          ),
          AnswerButton(
            onPressed: () {},
            child: const Text('Answer 4'),
          ),
        ],
      ),
    );
  }
}
