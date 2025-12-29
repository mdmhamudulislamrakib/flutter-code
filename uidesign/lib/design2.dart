import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row & Column Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('rubiks cube'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.square, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.blue),
              ],
             
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.square, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.yellow),
              ],
             
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.square, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.yellow),
              ],
             
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.square, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.square, color: Colors.blue),
              ],
             
            ),
            Text('Bottom Text'),
          ],
        ),
      ),
    );
  }
}