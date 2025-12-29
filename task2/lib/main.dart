import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'result.dart';
import 'courses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIU Student Portal - Prototype',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomeWithBottomNav(),
    );
  }
}

class HomeWithBottomNav extends StatefulWidget {
  const HomeWithBottomNav({super.key});

    @override
    State<HomeWithBottomNav> createState() => _HomeWithBottomNavState();
  }


  class _HomeWithBottomNavState extends State<HomeWithBottomNav> {
    int _currentIndex = 0;

    final List<Widget> _pages = const [
      SignInScreen(),
      ResultScreen(),
      CoursesScreen(),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('DIU Student Portal'),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),




        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Sign In'),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Result'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
           ],
       ),
   );
    }
  }
