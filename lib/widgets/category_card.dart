// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(10),
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 246, 240, 240)),
        child: Row(
          children: [
            SizedBox(
              width: _size.width * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Televisions and audio and wash machine",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        
                        decorationColor: Colors.red,
                        decorationThickness: 4,
                        
                        
                        
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Divider(color: Colors.red,thickness: 3,)
                ],
              ),
            ),
            SizedBox(
              width: _size.width * .45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          ],
        ));
  }
}
