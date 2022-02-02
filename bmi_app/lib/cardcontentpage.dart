import 'package:flutter/material.dart';
import 'kcontent.dart';

class cardContent extends StatelessWidget {
  final IconData gender;
  final String lable;

  const cardContent({required this.gender, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: kcontenttextstyle,
        )
      ],
    );
  }
}
