import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('this is my first text'),
          ElevatedButton(
            onPressed: (){},
              child: Text('this is my first button')
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              )
        ],
      ),
    );
   }
  }