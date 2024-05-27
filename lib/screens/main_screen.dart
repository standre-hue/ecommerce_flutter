// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/constances.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;
  List _pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    //final GlobalKey<ScaffoldState> _key = GlobalKey();
    final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _key,
        endDrawerEnableOpenDragGesture: false,
<<<<<<< HEAD
=======
        endDrawer: MyDrawer(),
>>>>>>> 992aaa2fc41e2f4dcd74d883dccf487258299ba8
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
                icon: Icon(Icons.menu, color: Colors.grey)
                ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Whishlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_sharp), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows), label: "Compare"),
          ],
        ),
        body: _pages[_selectedTab]);
  }
}
