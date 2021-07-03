import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/state/bottom_navigation_bar_state.dart';
import 'package:recipe_app/core/state/menu_state.dart';
import 'package:recipe_app/view/body/body_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavigationBarState()),
        ChangeNotifierProvider(create: (context) => MenuState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        home: BodyView(),
      ),
    );
  }
}
