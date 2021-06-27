import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Find Best Recipe \nFor Cooking',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    );
  }
}
