import 'package:flutter/material.dart';
import 'inpout.dart';

void main() => runApp(const BMICalulatoe());

class BMICalulatoe extends StatelessWidget {
  const BMICalulatoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0B0C10),
      ),
      home: const InputPage(),
    );
  }
}
