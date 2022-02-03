import 'package:flutter/material.dart';
import 'kcontent.dart';

class buttom extends StatelessWidget {
  buttom({required this.onPress, required this.textButton});

  final Function() onPress;
  String textButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kbouttomColor,
        height: kbottomHigdh,

        child: Center(
          child: Text(
            textButton,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
        // width: double.infinity,
      ),
    );
  }
}
