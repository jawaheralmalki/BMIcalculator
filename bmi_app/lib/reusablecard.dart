import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colour, this.cardwidget});
  final Color colour;
  final Widget? cardwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardwidget,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
