import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_bmicalculatorandroid/screens/result_page.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      routes: {
        ResultPage.routName: (context) => ResultPage(),
      },
    );
  }
}
