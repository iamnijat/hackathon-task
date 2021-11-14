class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sampleData = [
  {
    "id": 1,
    "question":
        "The number on the bottom of a fraction is called what?",
    "options": [
      'numerator',
      'denominator',
      'remainder',
      'math fact',
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What do you use to simplify a fraction?",
    "options": [
      'a common factor',
      'division',
      'multiplication',
      'nothing',
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "What must you have to add and subtract fractions?",
    "options": [
      'Common numerators',
      'Different denominators',
      'Different numerators',
      'Common denominators',
    ],
    "answer_index": 3,
  },
];
