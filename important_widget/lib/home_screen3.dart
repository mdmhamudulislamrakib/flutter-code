import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen2(),
    ),
  );
}

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
           
        CircularProgressIndicator(
          backgroundColor: Colors.amber,
        ),
        LinearProgressIndicator(
          value: .2,
        )
        ],
        ),
      ),
     );
  }
}