// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
const ReviewCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 232, 225, 225),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.person,size:35, color: Color.fromARGB(255, 255, 255, 255),),
                Spacer()
              ],
            ),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jr Stan',style: TextStyle(fontWeight: FontWeight.bold),),
              //const SizedBox(height: 30,),
              SizedBox(
                width:MediaQuery.of(context).size.width * .75,
                child: Text(
                  overflow: TextOverflow.clip,
                  "It's a good product and I recommande it to everyone out there It's a good product and I recommande it to everyone out there"),
              )
            ],
          )

        ],
      ),
    );
  }
}