
import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
     
     body: Column(
      children: [
        Text("here is row and column"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )

          ],
          ),
          Text('here is another row'),
          

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )

          ],
          ),
      ],
     ),
    );
   }
  }
