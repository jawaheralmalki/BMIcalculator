import 'package:flutter/material.dart';
import 'kcontent.dart';
import 'buttom_widget.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.resultText,
      required this.bmiResult,
      required this.interpretation});

  final String resultText;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATER')),
        backgroundColor: const Color(0xFF0B0C10),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: kTextBotumStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: kactiveCardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResutStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultMassegeStyle,
                  ),
                ],
              ),
            ),
          ),
          buttom(
            onPress: () {
              Navigator.pop(context);
            },
            textButton: "ER-CALCULATER ",
          ),
        ],
      ),
    );
  }
}
