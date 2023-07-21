import 'package:cric_expert/screens/quiz_page.dart';
import 'package:flutter/material.dart';

Color childrenColor = Colors.teal;

void main() {
  runApp(
    MaterialApp(
      home: const QuizPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
            textStyle: const TextStyle(
              fontSize: 15.0,
            ),
            foregroundColor: Colors.white60,
            side: const BorderSide(
              color: Colors.white60,
              style: BorderStyle.solid,
              width: 1,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
