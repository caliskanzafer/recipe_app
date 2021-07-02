import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

import 'components/product.dart';
import 'components/title_bar.dart';
import 'components/menu_bar.dart';
import 'components/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleBar(),
                  _sizedBox,
                  Flexible(
                    flex: 1,
                    child: SearchBar(),
                  ),
                  _sizedBox,
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: MenuBar(),
                  ),
                  _sizedBox,
                  Flexible(
                    flex: 8,
                    child: Product(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox get _sizedBox => SizedBox(
        height: defaultPadding,
      );
}
