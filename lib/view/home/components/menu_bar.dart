import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: Container(
                padding: EdgeInsets.all(defaultPadding / 2),
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
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Sushi',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
