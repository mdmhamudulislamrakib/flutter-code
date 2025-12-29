import 'package:flutter/material.dart';
import 'package:text_widget_explain/screen/Home/Home_screen.dart';

void  main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Homescreen(),
    );
  }
}