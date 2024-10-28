import 'package:flutter/material.dart';

class ColumnContainer extends StatelessWidget {
  const ColumnContainer(
      {super.key, required this.bgColor, required this.message});
  final Color bgColor;
  final String message;

  void onPressed() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text.rich(
                TextSpan(
                  text: message,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 10),
              ),
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
