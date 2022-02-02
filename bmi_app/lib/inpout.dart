import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'cardcontentpage.dart';
import 'kcontent.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? gender;
  int height = 180;
  int width = 60;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI-CALCULATER'),
        backgroundColor: const Color(0xFF0B0C10),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = GenderType.male;
                      });
                    },
                    colour: gender == GenderType.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardwidget: const cardContent(
                        gender: FontAwesomeIcons.mars, lable: "MEAL"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = GenderType.female;
                      });
                    },
                    colour: gender == GenderType.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardwidget: const cardContent(
                        gender: FontAwesomeIcons.venus, lable: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kactiveCardColor,
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: kcontenttextstyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(height.toString(), style: kNumberColorStyle),
                        const Text('cm', style: kcontenttextstyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: const Color(0XFFEB1555),
                        overlayColor: const Color(0x1fEB1555),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                WidthandAge(
                  num: width,
                  onPresMunas: () {
                    setState(() {
                      width--;
                    });
                  },
                  onPresPlus: () {
                    setState(() {
                      width++;
                    });
                  },
                  requir: "WIDTH",
                ),
                WidthandAge(
                  num: age,
                  onPresMunas: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPresPlus: () {
                    setState(() {
                      age++;
                    });
                  },
                  requir: "AGE",
                ),
              ],
            ),
          ),
          Container(
            color: kbouttomColor,
            // width: double.infinity,
            height: kbottomHigdh,
          ),
        ],
      ),
    );
  }
}

class CustumButton extends StatelessWidget {
  CustumButton({required this.onPressed, required this.icon});

  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      fillColor: const Color(0xFF111328),
      shape: const CircleBorder(),
      constraints: const BoxConstraints(minHeight: 60, minWidth: 60),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class WidthandAge extends StatelessWidget {
  WidthandAge(
      {required this.num,
      required this.onPresPlus,
      required this.onPresMunas,
      required this.requir});
  final int num;
  final Function() onPresPlus;
  final Function() onPresMunas;
  final String requir;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        colour: kactiveCardColor,
        cardwidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              requir,
              style: kcontenttextstyle,
            ),
            Text(num.toString(), style: kNumberColorStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustumButton(
                  onPressed: onPresMunas,
                  icon: FontAwesomeIcons.minus,
                ),
                const SizedBox(
                  width: 5,
                ),
                CustumButton(
                  onPressed: onPresPlus,
                  icon: FontAwesomeIcons.plus,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
