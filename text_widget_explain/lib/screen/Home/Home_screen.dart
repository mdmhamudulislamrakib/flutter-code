import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),

      body: Text ('Welcome to the Home Screen',
      style: TextStyle(fontSize: 24,
      //fontWeight: FontWeight.w900,
      //fontStyle: FontStyle.italic,
      color: Colors.blue,
      //letterSpacing: 5.0,
      //height: 2.0,    
        ),
      )
    );
  }
}