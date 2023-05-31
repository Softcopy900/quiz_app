import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practice/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {key}) : super(key: key);

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['userAnswer'] == itemData['correctAnswers'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIndex: itemData['questionIndex'] as int,
            isCorrectAnswer: isCorrectAnswer),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['questions'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['userAnswer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 202, 171, 252),
                ),
              ),
              Text(
                itemData['correctAnswers'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 181, 254, 246)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
