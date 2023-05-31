class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> shuffledList() {
   final shuffledAnswer = List.of(answer); // copy it to shuffledAnswer
    shuffledAnswer.shuffle(); //shuffle it
    return shuffledAnswer; // return the shuffled list
  }
}
