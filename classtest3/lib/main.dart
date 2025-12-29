import 'package:flutter/material.dart';
import 'Main_Screen.dart';



void main() {
  runApp(Rakib());
}

class Rakib extends StatelessWidget {
  const Rakib({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}