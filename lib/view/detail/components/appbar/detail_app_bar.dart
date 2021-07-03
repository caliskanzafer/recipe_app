import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'custom_back_button.dart';
import 'custom_more_button.dart';
import 'custom_title.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: CustomMoreButton(),
        ),
      ],
      leadingWidth: defaultPadding * 2.7,
      leading: Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: CustomBackButton(),
      ),
      title: CustomTitle(),
      centerTitle: true,
      backgroundColor: bgColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
