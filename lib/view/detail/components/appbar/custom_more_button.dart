import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomMoreButton extends StatelessWidget {
  const CustomMoreButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: defaultPadding * 1.7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(
        Icons.more_horiz,
        color: disableFontColor,
      ),
    );
  }
}
