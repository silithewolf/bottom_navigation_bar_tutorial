import 'package:bottom_navigation_bar_tutorial/provider/bottom_navigation_bar_provider.dart';
import 'package:bottom_navigation_bar_tutorial/screens/screen1.dart';
import 'package:bottom_navigation_bar_tutorial/screens/screen2.dart';
import 'package:bottom_navigation_bar_tutorial/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavWrapper extends StatelessWidget {
  final List<Widget> _tabs = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarProvider _bottomNavigationBarProvider =
        context.watch<BottomNavigationBarProvider>();
    return Scaffold(
      body: _tabs[_bottomNavigationBarProvider.currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavigationBarProvider.currentTabIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.place), label: 'Screen 1'),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: 'Screen 2'),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: 'Screen 3'),
        ],
        onTap: (index) => _bottomNavigationBarProvider.currentTabIndex = index,
      ),
    );
  }
}
