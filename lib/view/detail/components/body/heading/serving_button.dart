import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ServingButton extends StatelessWidget {
  const ServingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            secondryColor,
            primaryColor,
          ],
        ),
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(defaultPadding / 2,
            defaultPadding / 2.5, defaultPadding / 2, defaultPadding / 2.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '1 Serving',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
