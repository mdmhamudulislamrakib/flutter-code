import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      //body: Image.asset('assets/image1.jpg'),
      body: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/image1.jpg'),
      ), 
    );
  }
}