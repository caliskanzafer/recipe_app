import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/view/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      home: Scaffold(
        backgroundColor: bgColor,
        body: HomeView(),
      ),
    );
  }
}
