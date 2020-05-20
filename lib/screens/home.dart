import 'package:flutter/material.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/widgets/categories.dart';
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
                        color: amber,
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
            Container(
              height: MediaQuery.of(context).size.height * 0.42,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.42,
                        width: 200,
                        decoration: BoxDecoration(color: white, boxShadow: [
                          BoxShadow(
                              color: grey[300],
                              offset: Offset(1, 1),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: red,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Image.asset(
                              'assets/images/salmonpinwheel.png',
                              height: 140,
                              width: 140,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextTemplate(text: 'Salmon pinwheel'),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.near_me,
                                    color: red,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextTemplate(
                                        text: '4.7',
                                        textSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: grey,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right:8.0),
                                  child: TextTemplate(text: '\$12.95',textWeight: FontWeight.bold,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
