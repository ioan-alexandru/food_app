import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/products.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/widgets/text_template.dart';

class Details extends StatefulWidget {
  final ProductModel product;

  const Details({Key key, @required this.product}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              //width: MediaQuery.of(context).size.width,
              height: 300,
              child: Stack(
                children: <Widget>[
                  Carousel(
                    images: [
                      AssetImage('assets/images/salmonpinwheel.png'),
                      AssetImage('assets/images/salmonpinwheel.png'),
                      AssetImage('assets/images/salmonpinwheel.png'),
                    ],
                    dotBgColor: white,
                    dotColor: grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.2,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/shoppingbag.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 0,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: grey,
                                          offset: Offset(2, 1),
                                          blurRadius: 3,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 4.0),
                                    child: TextTemplate(
                                      text: "2",
                                      textColor: red,
                                      textSize: 18,
                                      textWeight: FontWeight.bold,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    bottom: 55,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(2, 1),
                              blurRadius: 3,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(Icons.favorite, size: 22, color: red),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextTemplate(
                          text: widget.product.name,
                          textSize: 15,
                          textWeight: FontWeight.bold),
                      TextTemplate(
                        text: 'by pizza hut',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: TextTemplate(
                      text: "\$" + (widget.product.price / 100).toString(),
                      textSize: 20,
                      textWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 30,
                      ),
                      onPressed: () {}),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28, 12, 28, 12),
                      child: TextTemplate(
                        text: "Add to Bag",
                        textColor: white,
                        textSize: 15,
                        textWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: red,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
