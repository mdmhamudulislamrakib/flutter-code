import 'package:classtest3/home_screen.dart';
import 'package:classtest3/profile_screen.dart';
import 'package:classtest3/setting_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> widgets = [
    HomeScreen(),
    ProfileScreen(),
    SettingScreen()    
  ];
  List<String> titles = ['Home', 'Profile', 'Setting'];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
        centerTitle: true,
      ),
      
      body: widgets[currentIndex],

      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 50),
            FlutterLogo(size: 100),
            SizedBox(height: 20),

          ListTile(
              onTap:(){
                setState(() {
                  currentIndex = 0;
                });
              },
              title:  Text('Home'),
              leading: Icon(Icons.home,)
            ),

           ListTile(
            onTap:(){
                setState(() {
                  currentIndex = 1;
                });
              },
              title:  Text('Profile'),
              leading: Icon(Icons.person),
            ),

            ListTile(
              onTap:(){
                setState(() {
                  currentIndex = 2;
                });
              },
              title:  Text('Setting'),
              leading: Icon(Icons.settings),
            )
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (value) {
          setState(() {
            currentIndex = value;
          }
          );
        },

        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      ),
      );
  }
}