class Question {
  final String questionTitle;
  final List<String> questionAnswers;
  const Question(this.questionTitle, this.questionAnswers);
  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(questionAnswers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
