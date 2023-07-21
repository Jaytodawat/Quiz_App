class Questions {
  String questionText = '';
  List<String> options = [];
  String correctAnswer = '';
  Questions(String text, List<String> ans, String correct) {
    questionText = text;
    options = ans;
    correctAnswer = correct;
  }
}
