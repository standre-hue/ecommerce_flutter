// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_scroll/auto_scroll.dart';
import 'package:ecommerce/constances.dart';
import 'package:ecommerce/data/product.dart';
import 'package:ecommerce/widgets/category_card.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();
  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: ListView.separated(
                        controller: _scrollController,
                        reverse: true,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (index, item) {
                          //_scrollToBottom();
                          return Image.asset("assets/images/c1.jpg");
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (index, item) {
                          return Image.asset("assets/images/c2.jpg");
                        },
                        separatorBuilder: (index, item) => SizedBox(width: 20),
                        itemCount: 10),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Find",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 10),
                            Text('What you need',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: Icon(Icons.chevron_left_outlined,
                                            color: Colors.white, size: 30)),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: Icon(Icons.chevron_right_outlined,
                                            color: Colors.white, size: 30)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(),
                          height: 290,
                          width: double.infinity,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 10),
                              itemBuilder: (context, index) => Container(
                                    height: 190,
                                    width: _size.width,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 240, 233, 233),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Phone & tablets",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Spacer(),
                                            Row(
                                              children: [
                                                Text("View all"),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .chevron_right_rounded)),
                                              ],
                                            )
                                          ],
                                        ),
                                        Text(
                                          "2 products",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                            height: 200,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ...products
                                                    .getRange(0, 2).map((product) => ProductCard(product: product,))
                                                    ,

                                                /*  Container(
                                                  decoration: BoxDecoration(
                                                      //color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  width: 100,
                                                  child: Image.asset(
                                                      
                                                      "assets/images/c4.png"),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      //color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  width: 100,
                                                  child: Image.asset(
                                                      "assets/images/c4.png"),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      //color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  width: 100,
                                                  child: Image.asset(
                                                      "assets/images/c4.png"),
                                                )
                                              */
                                              ],
                                            ))
                                      ],
                                    ),
                                  )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 600,
                    width: double.infinity,
                    child: Image.asset("assets/images/c5.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 600,
                    width: double.infinity,
                    child: Image.asset("assets/images/c6.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("More stores",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      Spacer(),
                      Row(
                        children: [
                          Text("View all"),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.chevron_right_rounded)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            Text('Top Rated Products',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: Icon(Icons.chevron_left_outlined,
                                            color: Colors.white, size: 30)),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: Icon(Icons.chevron_right_outlined,
                                            color: Colors.white, size: 30)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(),
                          height: 190,
                          width: double.infinity,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: products.length,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                            itemBuilder: (context, index) => ProductCard(product: products[index],),
                          ),
                        ),
                        const SizedBox(height: 10),
                        /*Container(
                          decoration: BoxDecoration(),
                          height: 190,
                          width: double.infinity,
                          child: ListView.separated(
                            itemCount: 7,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                            itemBuilder: (context, index) =>  CategoryCard(),
                            
                          ),
                        ),*/
                        CategoryCard(),
                        const SizedBox(height: 10),
                        CategoryCard(),
                        const SizedBox(height: 10),
                        CategoryCard(),
                        const SizedBox(height: 10),
                        CategoryCard(),
                        const SizedBox(height: 20),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.fire_truck,
                                      size: 50, color: Colors.grey),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "First Shipping",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "First Shipping",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.manage_history_sharp,
                                      size: 50, color: Colors.grey),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Authentics products",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "100% Authentics products",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.payment,
                                      size: 50, color: Colors.grey),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "100% secure payment",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "We ensure secure payment",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.support_agent_outlined,
                                size: 50, color: Colors.grey),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "24/7 Support",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "We ensure quality support",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
