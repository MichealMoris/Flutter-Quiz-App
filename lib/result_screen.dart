import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() switchScreen;
  const ResultScreen(
      {super.key, required this.selectedAnswers, required this.switchScreen});

  List<Map<String, Object>> getQuizSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_number': i + 1,
        'question_title': questions[i].questionTitle,
        'correct_answer': questions[i].questionAnswers[0],
        'selected_answer': selectedAnswers[i],
        'color': selectedAnswers[i] == questions[i].questionAnswers[0]
            ? Colors.greenAccent
            : Colors.redAccent
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getQuizSummary();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData.where((data) {
      return data['selected_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answer $correctAnswers out of $totalQuestions questions correctly!',
                style: GoogleFonts.tiltNeon(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              QuizSummary(
                summaryData: getQuizSummary(),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                onPressed: switchScreen,
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                label: const Text(
                  'Restart Quiz!',
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
}
