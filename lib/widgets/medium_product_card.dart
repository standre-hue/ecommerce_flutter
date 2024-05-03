// ignore_for_file: avoid_unnecessary_containers

import 'package:ecommerce/data/product.dart';
import 'package:ecommerce/screens/utils.dart';
import 'package:flutter/material.dart';

class MediumProductCard extends StatelessWidget {
  Product product;
  MediumProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:Colors.white),
      width: double.infinity,
      height: 300,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.asset(product.imgSrc,fit: BoxFit.cover,)),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            for (int i = 0; i < product.star; i++)
                  Icon(
                    Icons.star_border_purple500_sharp,
                    size: 15,
                  ),
          Text("(${product.star})"),
          ],),
          
             
              Text("Ojowamart"),
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                height: 20,
                child: Text(product.name,style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,)),
              Text("ksh ${formatMoney(product.price)}",style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold),)
      ],
    ));
  }
}
