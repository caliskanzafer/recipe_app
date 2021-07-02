import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/state/bottom_navigation_bar_state.dart';
import 'package:recipe_app/view/bookmark/bookmark_view.dart';
import 'package:recipe_app/view/cart/cart_view.dart';
import 'package:recipe_app/view/profile/profile_view.dart';

import '../../constants.dart';
import 'components/custom_bottom_navigation_bar.dart';
import '../home/home_view.dart';

class BodyView extends StatefulWidget {
  const BodyView({Key? key}) : super(key: key);

  @override
  _BodyViewState createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  List<Widget> _pages = [
    HomeView(),
    BookmarkView(),
    CartView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: _pages[Provider.of<BottomNavigationBarState>(context).currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
