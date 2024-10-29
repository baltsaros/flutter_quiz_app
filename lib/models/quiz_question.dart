class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String  text;
  final List<String>  answers;

  List<String> getShuffledAnswers() {
    final List<String> tmp = List.of(answers);
    tmp.shuffle();
    return tmp;
  }
}