
///this is StatefulWidget  example

import 'package:flutter/material.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  String Title='Home screen';

  void change1(){
    setState(() {
      Title = 'updated title';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text(Title),
        backgroundColor: Colors.blue,
    ),
    body:ElevatedButton(
        onPressed: (){
          change1();
        },
        child: Text('Button title'),
    )
    );
  }
}

