import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),

      body:Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black,width: 3,),

        boxShadow:[
          BoxShadow(color:Colors.yellow.withAlpha(500),
          blurRadius: 10,
          offset: Offset(5,5)
          )
        ]
       )
      ),
    );
  }
}