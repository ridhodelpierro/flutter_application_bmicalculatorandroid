import 'package:flutter/material.dart';
import 'package:flutter_application_bmicalculatorandroid/components/bottom_button.dart';
import 'package:flutter_application_bmicalculatorandroid/components/reusable_card.dart';
import 'package:flutter_application_bmicalculatorandroid/constant.dart';

class ResultPage extends StatelessWidget {
  static const routName = '/result';
  const ResultPage({this.bmiResult, this.resultText, this.interPretation});

  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    final ResultPage resultPage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hasil Anda Adalah',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Center(
                    child: Text(
                      resultPage.resultText,
                      style: kResultTextStyle,
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      resultPage.bmiResult,
                      style: kBMITextStyle,
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      resultPage.interPretation,
                      style: kBodyTextStyle,
                    ),
                  )),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonText: 'Hitung Ulang',
              onTap: () {
                Navigator.pushNamed(context, '/');
              })
        ],
      ),
    );
  }
}
