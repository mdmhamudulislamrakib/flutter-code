import 'package:flutter/material.dart';

//1st class
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//2nd class
class _HomeScreenState extends State<HomeScreen> {

  
  String title = 'HOME';
  bool centerTitle = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(title),
        centerTitle: centerTitle,
      ),

      body: IconButton(
        onPressed: (){
          setState(() {
            centerTitle = !centerTitle;
          });
        },
        icon: Icon(Icons.home, color: Colors.lightBlue, size: 50,),
      )

      /*
      body:TextButton(
        onPressed: (){},
        onLongPress: () {
        },
        child: Text('Text Button', style:TextStyle(color:Colors.red,),)
        )
      */

      /////////:ElevatedButton example /////////
      /*
      body:ElevatedButton.icon(
        onPressed: (){print('Button clicked');},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          elevation: 10,
          textStyle: TextStyle(fontSize: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200),
          ),
        ),
        icon: Icon(Icons.home, color: Colors.red ,),
        label: Text('My Button'),
      ),
      */

    );
  }
}