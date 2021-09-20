void main() {
  var questionIndex = 0;

  const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Orange']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Eagle', 'Fish', 'Bear', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        'Final Destination',
        'Resident Evil',
        'Outlander',
        'HomeComing'
      ]
    }
  ];

  var myAnswers =
      (questions[questionIndex]['answers'] as List<String>).map((answer) {
    return Answer(answer);
  }).toList();

  print({myAnswers});
}

class Answer {
  final String answer;

  Answer(this.answer);

  @override
  String toString() {
    return answer;
  }
}
