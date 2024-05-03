import 'package:ecommerce/constances.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreCard extends StatelessWidget {
const StoreCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      height: 200,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/logo.jpg")),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.5,
                  child: Text("Ojowamart ",overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                  Row(
                    children: [
                        for (int i = 0; i < 2; i++)
                  Icon(
                    Icons.star_border_purple500_sharp,
                    size: 15,
                  ),
                  Text("(${2})"),
                  
                    ],
                  ),
                  Text("2 products"),
                  Text("0%"),
                  Text("Positive Review"),
                  
                ],
              ),
              Spacer(),
              Container(
                height: 110,
                decoration: BoxDecoration(),
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primaryColor
                        ),
                        child: GestureDetector(
                          onTap:(){},
                          child: Center(child: Icon(Icons.chevron_right, size:40, color:Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  width: 2,
                  color: Colors.red
                )
                
              )
            ),
            onPressed: (){

          }, child: Container(
            
            child: Center(child: Text("Visit Store", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),))))
        ],
      ),
    );
  }
}