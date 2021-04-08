import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  // The index of the current tab
  int _currentTabIndex = 0;

  // Returns the current tab's index
  get currentTabIndex => _currentTabIndex;

  // Sets the current tab's index
  set currentTabIndex(int newIndex) {
    _currentTabIndex = newIndex;
    notifyListeners();
  }
}
