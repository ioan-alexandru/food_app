import 'package:flutter/material.dart';
import 'package:foodapp/models/products.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/widgets/text_template.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: TextTemplate(text: 'Item cart'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/images/shoppingbag.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: grey[400],
                              offset: Offset(2, 1),
                              blurRadius: 3,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: TextTemplate(
                          text: "2",
                          textColor: red,
                          textSize: 16,
                          textWeight: FontWeight.bold,
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      /*body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 10),
              child: TextTemplate(
                text: 'Your Food Cart',
                textSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: red[50], offset: Offset(3, 7), blurRadius: 25)
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      product.imagePath,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: product.name + "\n",
                            style: TextStyle(color: black, fontSize: 20)),
                        TextSpan(
                            text: "\$" + product.price.toString() + "\n",
                            style: TextStyle(
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ])),
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),*/
    );
  }
}
