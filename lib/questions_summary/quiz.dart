import 'package:flutter/material.dart';
import 'package:practice/questions_summary/questions_screen.dart';
import 'start_screen.dart';
import 'package:practice/data/questions.dart';
import 'package:practice/questions_summary/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({key}) : super(key: key);
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectAnswer = [];
  // method 1

  //Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  // method 2

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswer.add(answer);

    if (selectAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result_screen';
      });
    }
  }

  void reStartQuiz() {
    setState(() {
      selectAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // method 3
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelect: chooseAnswer,
      );
    }

    if (activeScreen == 'result_screen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectAnswer,
        onRestart: reStartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          ),
          child: screenWidget,

          // method 2 continuation
          //activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
