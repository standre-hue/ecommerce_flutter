// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field

import 'package:ecommerce/constances.dart';
import 'package:ecommerce/data/product.dart';
import 'package:ecommerce/screens/utils.dart';
import 'package:ecommerce/widgets/my_drawer.dart';
import 'package:ecommerce/widgets/review_card.dart';
import 'package:ecommerce/widgets/store_card.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget  {
  int productId;
  ProductDetailScreen({Key? key, required this.productId}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  bool isLoading = true;
  double _totalPrice = 0;
  int _quantityToBuy = 0;
  Product? product;
  final _controller = TextEditingController(text: "0");
  final _scrollController = TrackingScrollController();
  late TabController
      _tabController; //= TabController(length: 2, vsync: AnimatedListState(), );

  

  void _loadProduct() {
    try {
      product = products[widget.productId];
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
     _tabController = TabController(length: 2, vsync: this);
    _loadProduct();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    //final _tabController = TabController(length: 2, vsync: AnimatedListState() );
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
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: _size.width,
              height: _size.height,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: _size.width,
                      height: 400,
                      child: ListView.separated(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: 5);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: _size.width,
                              child: Image.asset(
                                product!.imgSrc,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ),
                    Text(
                      product!.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < product!.star; i++)
                          Icon(
                            Icons.star_border_purple500_sharp,
                            size: 15,
                          ),
                        Text("(${product!.star})")
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${product!.quantity} in Stock",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ksh ${formatMoney(product!.price)}",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            IconButton(
                                onPressed: _quantityToBuy == 0
                                    ? null
                                    : () {
                                        _quantityToBuy--;

                                        setState(() {
                                          _controller.text =
                                              _quantityToBuy.toString();
                                        });
                                      },
                                icon: Icon(Icons.remove,
                                    color: primaryColor, size: 30)),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                                controller: _controller,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            IconButton(
                                onPressed: _quantityToBuy == product!.quantity
                                    ? null
                                    : () {
                                        _quantityToBuy++;

                                        setState(() {
                                          _controller.text =
                                              _quantityToBuy.toString();
                                        });
                                      },
                                icon: Icon(Icons.add,
                                    color: primaryColor, size: 30))
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 236, 236),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Total Price: "),
                              Text(
                                  "Ksh ${formatMoney(_quantityToBuy * product!.price)} ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Tax: "),
                              Text(
                                "Incl ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0))),
                            onPressed: () {},
                            child: SizedBox(
                                width: 90,
                                child: Center(
                                    child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )))),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0))),
                            onPressed: () {},
                            child: SizedBox(
                                width: 90,
                                child: Center(
                                    child: Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: Column(
                        children: [
                          TabBar(
                            controller: _tabController,
                            indicatorColor: Colors.red,
                            tabs: [
                            Text('Product Details',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Text('Reviews', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(
                            width: double.infinity,
                            height: 250,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                Container(
                                  height: 200,
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(style:TextStyle(),"Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).Reloaded 1 of 714 libraries in 3 265ms (compile: 27 ms, reload: 1024 ms, reassemble: 2095 ms).Reloaded 1 of 714 libraries in 3 229ms (compile: 24 ms, reload: 1072 ms, reassemble: 2046 ms).")
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 200,
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ReviewCard()
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    StoreCard()
                  ],
                ),
              ),
            ),
    );
  }
}
