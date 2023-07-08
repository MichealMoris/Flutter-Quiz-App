import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final List<String> selectedAnswers;
  const ResultScreen({super.key, required this.selectedAnswers});
  @override
  State<ResultScreen> createState() {
    return _ResultScreenState();
  }
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(context) {
    return const Text('Result Screen...');
  }
}
