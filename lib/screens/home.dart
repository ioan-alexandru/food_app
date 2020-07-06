import 'package:flutter/material.dart';
import 'package:foodapp/screens/bag.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/util/screen_navigation.dart';
import 'package:foodapp/widgets/categories.dart';
import 'package:foodapp/widgets/featured_product.dart';
import 'package:foodapp/widgets/popular_restaurant.dart';
import 'package:foodapp/widgets/small_button.dart';
import 'package:foodapp/widgets/text_template.dart';
import 'package:foodapp/providers/user.dart';
import 'package:foodapp/providers/restaurant.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    final restaurantProvider = Provider.of<RestaurantProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTemplate(
          text: 'FoodApp',
        ),
        iconTheme: IconThemeData(color: black),
        backgroundColor: amber,
        elevation: 0.2,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_none,
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
                    color: red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                onPressed: () {
                  changeScreen(context, ShoppingBag());
                },
              ),
              Positioned(
                top: 10,
                right: 12,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: TextTemplate(
                text: user.userModel.name,
                textSize: 18,
                textWeight: FontWeight.bold,
              ),
              accountEmail: TextTemplate(
                text: user.userModel.email,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: TextTemplate(
                text: "Home",
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: TextTemplate(
                text: "Account",
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.shopping_cart),
              title: TextTemplate(
                text: "Cart",
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.bookmark_border),
              title: TextTemplate(
                text: "My orders",
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              color: amber,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(12),
                  ),
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
            ),
            SizedBox(
              height: 5,
            ),
            CategoryWidget(),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextTemplate(
                    text: "Popular restaurants",
                    textSize: 20,
                    textColor: grey,
                  ),
                  TextTemplate(
                    text: "see all",
                    textSize: 14,
                    textColor: black,
                  ),
                ],
              ),
            ),
            Column(
              children: restaurantProvider.restaurants
                  .map((item) => GestureDetector(
                onTap: () {},
                child: RestaurantWidget(
                  restaurant: item,
                ),
              ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
