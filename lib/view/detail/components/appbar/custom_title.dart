import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Salmon Sushi',
      style: TextStyle(color: enableFontColor),
    );
  }
}
