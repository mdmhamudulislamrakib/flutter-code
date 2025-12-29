import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
 _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int index = 0;


  final pages = [
      Center(child: Text("Dashboard", style: TextStyle(fontSize: 25))),
     Center(child: Text("Favorite", style: TextStyle(fontSize: 25))),
    Center(child: Text("Settings", style: TextStyle(fontSize: 25))),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
       body: pages[index],
        bottomNavigationBar: CurvedNavigationBar(
         index: index,
             onTap: (value) => setState(() => index = value),
            height: 55,
            color: Colors.blue,
          backgroundColor: Colors.white,
              items: const [
             Icon(Icons.dashboard, size: 30, color: Colors.white),
            Icon(Icons.favorite, size: 30, color: Colors.white),
            Icon(Icons.settings, size: 30, color: Colors.white),
            ],
          ),
       ),
      );
   }
}
