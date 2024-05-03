// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:ecommerce/constances.dart';
import 'package:ecommerce/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Drawer(
      width: _size.width * .8,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      //widget.key_.currentState!.closeDrawer();
                    },
                    child: Icon(Icons.close)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                      hintText: "Search for items",
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                )),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
               
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Home",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Stores",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Brands",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Become a vendor",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "Theme mode",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.wb_sunny_outlined)),
                    const SizedBox(width: 5),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.mode_night_rounded)),
                  ],
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: BeveledRectangleBorder(),
                      padding: EdgeInsets.only(left: 40, right: 40)),
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
