import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.quizSummary});

  final List<Map<String, Object>> quizSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: quizSummary.map((data) {
            return Row(
              children: [
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: data['user_answer'] == data['correct_answer'] ? Colors.cyanAccent : const Color.fromARGB(255, 253, 50, 236),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 255, 107, 218),
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 53, 215, 255),
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
