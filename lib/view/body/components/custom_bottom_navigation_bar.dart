import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/enum/enums.dart';
import 'package:recipe_app/core/state/bottom_navigation_bar_state.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarState>(
        builder: (context, state, widget) {
      return Container(
        height: defaultPadding * 3,
        decoration: BoxDecoration(
          border: Border.symmetric(
            vertical: BorderSide.none,
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                state.changeIndex(BottomNavigationBarEnum.HOME.index);
              },
              icon: Icon(
                Icons.home,
                color: changeColor(
                    BottomNavigationBarEnum.HOME.index, state.currentIndex),
              ),
            ),
            IconButton(
              onPressed: () {
                state.changeIndex(BottomNavigationBarEnum.BOOKMARK.index);
              },
              icon: Icon(
                Icons.bookmark_sharp,
                color: changeColor(
                    BottomNavigationBarEnum.BOOKMARK.index, state.currentIndex),
              ),
            ),
            IconButton(
              onPressed: () {
                state.changeIndex(BottomNavigationBarEnum.CART.index);
              },
              icon: Icon(
                Icons.shopping_bag,
                color: changeColor(
                    BottomNavigationBarEnum.CART.index, state.currentIndex),
              ),
            ),
            IconButton(
              onPressed: () {
                state.changeIndex(BottomNavigationBarEnum.PROFILE.index);
              },
              icon: Icon(
                Icons.person,
                color: changeColor(
                    BottomNavigationBarEnum.PROFILE.index, state.currentIndex),
              ),
            ),
          ],
        ),
      );
    });
  }

  Color changeColor(int index, int currentIndex) {
    if (currentIndex == index) {
      return enableFontColor;
    } else
      return disableFontColor;
  }
}
