import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onPressed;
  final Text child;
  const AnswerButton({required this.onPressed, required this.child, super.key});
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
