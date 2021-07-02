import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/state/menu_state.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _categories = ['All', 'Sushi', 'Burger'];
    int _currentIndex = Provider.of<MenuState>(context).currentIndex;
    return Consumer<MenuState>(
      builder: (context, state, widget) {
        return Container(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: GestureDetector(
                  onTap: () {
                    state.changeIndex(index);
                  },
                  child: menuCard(index, _currentIndex, _categories),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }

  Container menuCard(int index, int _currentIndex, List<dynamic> _categories) {
    return Container(
      padding: EdgeInsets.fromLTRB(defaultPadding * 1.2, defaultPadding / 2,
          defaultPadding * 1.2, defaultPadding / 2),
      decoration: BoxDecoration(
        gradient: (index == _currentIndex)
            ? LinearGradient(
                colors: [
                  secondryColor,
                  primaryColor,
                ],
              )
            : LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: menuText(_categories, index, _currentIndex),
    );
  }

  Center menuText(List<dynamic> _categories, int index, int _currentIndex) {
    return Center(
      child: Text(
        _categories[index],
        style: TextStyle(
          color: index == _currentIndex ? Colors.white : disableFontColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
