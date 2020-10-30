import 'package:age_calculator/screens/calendar_screen.dart';
import 'package:age_calculator/screens/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Product Sans"),
      home: HomePage(),
    );
  }
}
