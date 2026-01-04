import 'home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isConnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Column(
        children: [
          Switch(
            value: isConnected,
            onChanged: (value) {
              setState(() {
                isConnected = value;
              });
            
            },
           )
        ],
      ),
    );
  }
}