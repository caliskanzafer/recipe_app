import 'package:flutter/cupertino.dart';

class MenuState with ChangeNotifier {
  int _currentIndex = 0;
  get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
