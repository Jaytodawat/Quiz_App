import 'package:cric_expert/models/questions.dart';

class QuizData {
  final List<Questions> questionBank = [
    Questions(
        'Which of the following is the correct syntax to print the message in C++ language?',
        [
          'cout <<"Hello world!";,',
          'Cout << Hello world! ;',
          'Out <<"Hello world!;',
          'None of the above',
        ],
        'cout <<"Hello world!";'),
    Questions(' Which of the following is the correct identifier?',
        ['%var_name', 'VAR_123', 'varname@', 'None of the above'], 'VAR_123'),
    Questions(
        'Which of the following is the address operator?',
        [
          '@',
          '#',
          '&',
          '%',
        ],
        '&'),
    Questions(
        'The programming language that has the ability to create new data types is called___.',
        ['Overloaded', 'Encapsulated', 'Reprehensible', 'Extensible'],
        'Extensible'),
    Questions(
        'Which of the following is the original creator of the C++ language?',
        [
          'Dennis Ritchie',
          'Ken Thompson',
          'Bjarne Stroustrup',
          'Brian Kernighan'
        ],
        'Bjarne Stroustrup')
  ];
}
