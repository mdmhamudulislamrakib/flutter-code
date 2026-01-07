import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commers_app/widgets/item_banner.dart';
import 'package:e_commers_app/widgets/item_category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> banners= [ 'banner1.jpg', 'banner2.jpg', 'banner3.jpg'];
  int currentIndex=0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(1),
          child: Image.asset('assets/icons/mylogo.png'),
        ),
        title: Text('E-Commerce App') ,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Badge(
              label: Text('10'),
              child: Icon(CupertinoIcons.bell, size: 28),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
      //search box. .................
       Card(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none,
                ),
            ),
          ),
      //banners.....................
       SizedBox(
       height: 150,
         child: PageView(
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
           children: [
            for (String banner in banners)
            ItemBanner(image: banner),
         ],
         ),
       ),
       SizedBox(
        height: 30,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            for (int index = 0; index < banners.length; index++)
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: currentIndex == index ? 12 : 8, width: currentIndex == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index ? Colors.grey : Colors.grey.shade400
                ),
              )
          ],
         ),
       ),
      //categories...................
      ListTile(
        title: Text('Categories'),
        trailing: Text('SHOW ALL', style: TextStyle(color: Colors.indigo),),
         ),
      SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ItemCategory(title: 'Beauty', image: 'beauty.png', color: Colors.pinkAccent),
              ItemCategory(title: 'Baby', image: 'baby.png', color: Colors.pinkAccent),
              ItemCategory(title: 'Electronics', image: 'electronics.png', color: Colors.indigo),
              ItemCategory(title: 'Kitchen', image: 'kitchen.png', color: Colors.teal),
              ItemCategory(title: 'Medical', image: 'medical.png', color: Colors.teal),

          ],
        ),
      )
       ],
      ),
    );
  }
}