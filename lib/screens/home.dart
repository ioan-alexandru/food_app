import 'package:flutter/material.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/widgets/bottom_navigation_icon.dart';
import 'package:foodapp/widgets/categories.dart';
import 'package:foodapp/widgets/featured_product.dart';
import 'package:foodapp/widgets/text_template.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextTemplate(
                    text: 'What are your food choices',
                    textSize: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: red,
                      ),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 5,
                      spreadRadius: 1)
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: black,
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: black,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Find food or restaurants',
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextTemplate(
                text: 'Popular choices',
                textSize: 20,
              ),
            ),
            FeaturedProduct(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 63,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavIcon(imagePath: 'assets/images/home.png',text: 'Home',),
            BottomNavIcon(imagePath: 'assets/images/shoppingbag.png',text: 'Cart',),
            BottomNavIcon(imagePath: 'assets/images/home.png',text: 'Home',),
          ],
        ),
      ),
    );
  }
}
