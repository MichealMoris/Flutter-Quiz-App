import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Widget> children;
  const GradientContainer({required this.children, super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 0, 89, 255),
              Colors.lightBlue,
            ]),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
