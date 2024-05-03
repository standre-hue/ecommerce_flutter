// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/data/product.dart';
import 'package:ecommerce/screens/utils.dart';
import 'package:ecommerce/screens/product_detail.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  Product product;
  ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.circular(20)),
      width: 120,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                        productId: widget.product.id,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              widget.product.imgSrc,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < widget.product.star; i++)
                  Icon(
                    Icons.star_border_purple500_sharp,
                    size: 15,
                  ),
                /*Icon(
                  Icons.star_border_purple500_sharp,
                  size: 15,
                ),
                Icon(
                  Icons.star_border_purple500_sharp,
                  size: 15,
                ),
                Icon(
                  Icons.star_border_purple500_sharp,
                  size: 15,
                ),
                Icon(
                  Icons.star_border_purple500_sharp,
                  size: 15,
                ),
                */Text("(${widget.product.star})")
              ],
            ),
            //Text('Ojowamart',style: TextStyle(fontSize: 11 ),),
            Text(
              widget.product.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'ksh ${formatMoney(widget.product.price)}',
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 15, color: Colors.red),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
