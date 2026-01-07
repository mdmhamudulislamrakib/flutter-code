import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title,image;
  final Color color;
  const ItemCategory({super.key, required this.title, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
              spacing:1,
              children: [
                Container(
                  padding: EdgeInsets.all(1),
                  decoration:BoxDecoration(
                    color: color,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/icons/$image', height: 50,width: 60,)
                  ),
                Text(title, style:TextStyle(fontWeight: FontWeight.w300),),
              ],
            );
  }
}