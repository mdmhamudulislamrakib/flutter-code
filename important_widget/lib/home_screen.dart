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
        spacing: 15,
        children:[
          Switch( 
            value: isConnected,
            activeColor: Colors.red,
            activeTrackColor: Colors.blue,
            inactiveTrackColor: Colors.amber,
            inactiveThumbColor: Colors.black,
            onChanged: (value) {
              setState(() {
                isConnected = value;
              });
            },
        ),

           SwitchListTile (
            value:isConnected,
            onChanged: (value){
              setState(() {
                isConnected = value!;
              });
             },
            title: Text("Internet Connection"),
            subtitle: Text("WiFi or Mobile Data"),
            secondary: Icon(Icons.wifi),
            ),

           Checkbox(
            value: isConnected,
            onChanged: (value) {
            setState(() {
              isConnected = value!;
            });
           },
           ),
           CheckboxListTile(
            value: isConnected,
            onChanged: (value) {
            setState(() {
              isConnected = value!;
            });
           },
            title: Text("Accept Terms"),
            subtitle: Text("Please accept terms and conditions"),
            secondary: Icon(Icons.info),
           ),
           
        ],
      ),
    );
  }
}