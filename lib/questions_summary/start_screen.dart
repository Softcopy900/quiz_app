import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {key}) : super(key: key);
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 237, 223, 252),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed: startQuiz,
            
          label: const Text('Start Quiz'),
        )
      ]),
    );
  }
}
