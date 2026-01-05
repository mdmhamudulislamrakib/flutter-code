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
      body: Column(
        spacing: 15,
        children: [
          Wrap(
            spacing: 10,runSpacing: 10,
            children: [
            Container(
              color: Colors.blue,
              height: 50,
              width:50,
            ),

             Container(
              color: Colors.red,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.amber,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.blue,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.red,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.amber,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.blue,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.red,
              height: 50,
              width:50,
            ),

            Container(
              color: Colors.amber,
              height: 50,
              width:50,
            ),

          ],)
        ],
      ),
    );
  }
}