import 'package:bottom_navigation_bar_tutorial/provider/bottom_navigation_bar_provider.dart';
import 'package:bottom_navigation_bar_tutorial/screens/nav_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavigationBarProvider(),
      child: MaterialApp(
        title: 'Bottom Navigation Bar Tutorial',
        home: NavWrapper(),
      ),
    );
  }
}
