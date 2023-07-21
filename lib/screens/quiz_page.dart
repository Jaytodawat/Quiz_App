import 'package:cric_expert/constants.dart';
import 'package:cric_expert/models/quiz_data.dart';
import 'package:flutter/material.dart';
import 'package:cric_expert/models/icons_list.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

QuizData quizData = QuizData();

class _QuizPageState extends State<QuizPage> {
  bool isEnabled = true;
  int currentQuestion = 1;
  String questionText =
      'The first official international match of cricket was held in 1844 between...';
  List<String> options = [
    'England & Australia',
    'India & Pakistan',
    'USA & Canada',
    'England & India'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.2, 0.6, 0.9],
            colors: [Color(0xFF0F1533), Color(0xFF1D1F40), Color(0xFF0F1533)],
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cricket Quiz',
                  style: kLabelStyle.copyWith(
                    fontSize: 15.0,
                    color: const Color(0xFF8D8E98),
                  ),
                ),
                Text(
                  'Question $currentQuestion/20',
                  style: kLabelStyle.copyWith(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),

                //TODO:2.To update list as per the answer i.e
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: iconList,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      quizData.questionBank[currentQuestion - 1].questionText,
                      style: const TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: OutlinedButton(
                            onPressed: isEnabled ? () {} : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(quizData.questionBank[currentQuestion - 1]
                                    .options[0]),
                                const Icon(Icons.circle_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: OutlinedButton(
                            onPressed: isEnabled ? () {} : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(quizData.questionBank[currentQuestion - 1]
                                    .options[1]),
                                const Icon(Icons.circle_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: OutlinedButton(
                            onPressed: isEnabled ? () {} : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(quizData.questionBank[currentQuestion - 1]
                                    .options[2]),
                                const Icon(Icons.circle_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: OutlinedButton(
                            onPressed: isEnabled ? () {} : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(quizData.questionBank[currentQuestion - 1]
                                    .options[3]),
                                const Icon(Icons.circle_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.power_settings_new_outlined,
                          color: Colors.white70,
                        ),
                        label: const Text(
                          'Quit Quiz',
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130.0,
                        height: 50.0,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xFF06D3F6),
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              side: const BorderSide(
                                color: Color(0xFF06D3F6),
                              )),
                          child: const Text('Next'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
