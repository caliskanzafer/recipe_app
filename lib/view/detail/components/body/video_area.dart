import 'package:flutter/material.dart';

class VideoArea extends StatelessWidget {
  const VideoArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(),
    );
  }
}
