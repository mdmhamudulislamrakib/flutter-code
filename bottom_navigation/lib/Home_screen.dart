import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {


  int index=0;
  List<String> items=['Burger','Pizza','Drinks'];
  List<Widget> widgets=
  [
    Text('this is Burger Screen'),
    Text('this is Pizza Screen'),
    Text('this is Drinks Screen'),
  ];
  ElevatedButton(
    on
  )

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(items [index],style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.blue,
       centerTitle: true,

      ),
      body: Center(child: widgets[index]
      ),

      bottomNavigationBar: BottomNavigationBar(

        onTap: (value){
          setState(() {
            index=value;
          });
        },

        currentIndex: index,
        items: 
        [
          BottomNavigationBarItem(
            label: 'Burger',
            icon:Icon(Icons.home) 
            ),

            BottomNavigationBarItem(
            label: 'Pizza',
            icon:Icon(Icons.search) 
            ),

            BottomNavigationBarItem(
            label: 'Drinks',
            icon:Icon(Icons.settings) 
            )
        ],
      ),
    );
  }
}