
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('home'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Hello Daffodil i am back'),
        )
      )
    )
  );
}