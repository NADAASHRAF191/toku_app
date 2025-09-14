import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

/// Entry point of the app
void main() {
  runApp(const TokuApp());
}

/// Root widget of the app
class TokuApp extends StatelessWidget {
  const TokuApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,

      // First screen of the app
      home: HomePage(),
    );
  }
}
