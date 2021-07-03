import 'package:flutter/material.dart';

import 'ingridients_text.dart';
import 'serving_button.dart';

class HeadingArea extends StatelessWidget {
  const HeadingArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IngridientsText(),
        ServingButton(),
      ],
    );
  }
}
