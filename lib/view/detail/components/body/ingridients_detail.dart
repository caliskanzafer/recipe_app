import 'package:flutter/material.dart';

import '../../../../constants.dart';

class IngridientsDetail extends StatelessWidget {
  const IngridientsDetail({
    Key? key,
    required SizedBox sizedBox,
  })  : _sizedBox = sizedBox,
        super(key: key);

  final SizedBox _sizedBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(defaultPadding / 3,
            defaultPadding / 3, defaultPadding, defaultPadding / 3),
        child: Row(
          children: [
            Container(
              width: 60,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Icon(
                  Icons.ac_unit,
                ),
              ),
            ),
            _sizedBox,
            Text(
              'Matcha',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: enableFontColor,
              ),
            ),
            Spacer(),
            Text(
              '200 gr',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: disableFontColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
