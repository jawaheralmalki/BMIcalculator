import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'cardcontentpage.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomHigdh = 80.0;
const bouttomColor = Colors.red;

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

  // Color maleCardColour = inactiveCardColor;
  // Color femaleCardColour = inactiveCardColor;

  // void updateColour(GenderType gander) {
  //   if (gander == GenderType.male) {
  //     if (maleCardColour == inactiveCardColor) {
  //       maleCardColour = activeCardColor;
  //       femaleCardColour = inactiveCardColor;
  //     } else {
  //       maleCardColour = inactiveCardColor;
  //     }
  //   }
  //   if (gander == GenderType.female) {
  //     if (femaleCardColour == inactiveCardColor) {
  //       femaleCardColour = activeCardColor;
  //       maleCardColour = inactiveCardColor;
  //     } else {
  //       femaleCardColour = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0x141212),
      appBar: AppBar(
        title: const Text('BMI-CALCULATER'),
        backgroundColor: const Color(0xFF0B0C10),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      colour: gender == GenderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardwidget: const cardContent(
                          gender: FontAwesomeIcons.mars, lable: "MEAL"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = GenderType.female;
                      });
                    },
                    child: ReusableCard(
                      colour: gender == GenderType.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardwidget: const cardContent(
                          gender: FontAwesomeIcons.venus, lable: "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bouttomColor,
            // width: double.infinity,
            height: bottomHigdh,
          ),
        ],
      ),
    );
  }
}
