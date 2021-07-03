import 'package:flutter/material.dart';

class IngridientsText extends StatelessWidget {
  const IngridientsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ingridients (12)',
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo[800]),
    );
  }
}
