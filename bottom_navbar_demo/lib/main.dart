import 'package:flutter/material.dart';
import 'package:bottom_navbar_demo/bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      //title: 'Bottom Navigation Demo',
      //theme: ThemeData(
        //primarySwatch: Colors.grey,
      //),
      home: BottomNavigationBarExample(),
    );
  }
}
