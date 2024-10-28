import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  void onPressed() {}

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(155, 255, 255, 255),
          ),
          const Padding(
              padding: EdgeInsets.only(
                top: 40,
                bottom: 30,
              ),
              child: Text(
                'Learn Flutter in the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              )),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 12),
            ),
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
