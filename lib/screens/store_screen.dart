// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce/data/product.dart';
import 'package:ecommerce/widgets/medium_product_card.dart';
import 'package:ecommerce/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({ Key? key }) : super(key: key);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  String _value = "Default";

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
              key: _key,
        drawer: MyDrawer(),
        appBar: AppBar(
          leading: SizedBox(
              height: 50,
              width: 40,
              child: Image.asset("assets/images/logo.jpg")),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.person, color: Colors.grey)),
            IconButton(
                onPressed: () {
                  //print(_key.currentState == null);
                  _key.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Colors.grey)),
          ],
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 248, 245, 245)),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: Colors.white),
                  width: double.infinity,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset("assets/images/logo.jpg"))
                              ],
                            ),
                            Column(
                              children: [
                                Text('Ojowamart',style: TextStyle(fontSize:17, fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                  for (int i = 0; i < 5; i++)
                                    Icon(
                                      Icons.star_border_purple500_sharp,
                                      size: 15,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("O reviews"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("4 orders"),
                                  ],
                                ),


                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Category Products",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Home"),
                          Text(" / "),
                          Text("Category Products",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(" / "),
                          Text("Smart Phones",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 230,
                        height: 40,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 170, 163, 163))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: Icon(Icons.arrow_upward_rounded),
                            ),
                            const SizedBox(width: 10),
                            DropdownButton(
                                value: _value,
                                //icon: Icon(Icons.filter_alt_outlined),
                                items: [
                                  DropdownMenuItem(
                                      value: 'Default',
                                      child: Text(
                                        "Default",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  DropdownMenuItem(
                                      value: 'A to Z Order',
                                      child: Text(
                                        "A to Z Order",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  DropdownMenuItem(
                                      value: 'Z to A Order',
                                      child: Text(
                                        "Z to A Order",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  DropdownMenuItem(
                                      value: "High to Low Price",
                                      child: Text("High to Low Price",
                                          style:
                                              TextStyle(color: Colors.black))),
                                  DropdownMenuItem(
                                      value: "Low to High Price",
                                      child: Text("Low to High Price",
                                          style:
                                              TextStyle(color: Colors.black))),
                                ],
                                onChanged: (String? value) {
                                  //print(value);
                                  setState(() {
                                    _value = value!;
                                  });
                                  print(_value);
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined, color: Colors.red))
                ],),
                const SizedBox(height: 0),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10, ),
                  child: ListView.separated(
                      separatorBuilder: (item, index) {
                        return SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: products.length,
                      itemBuilder: (item, index) {
                        return MediumProductCard(product: products[index]);
                      }),
                ))
              ],
            )),
    );
  }
}