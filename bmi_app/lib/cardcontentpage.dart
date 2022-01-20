import 'package:flutter/material.dart';

const contenttextstyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

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
          style: contenttextstyle,
        )
      ],
    );
  }
}
