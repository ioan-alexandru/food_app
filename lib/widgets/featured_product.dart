import 'package:flutter/material.dart';
import 'package:foodapp/providers/product.dart';
import 'package:foodapp/screens/details.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/util/screen_navigation.dart';
import 'package:foodapp/widgets/loading.dart';
import 'package:foodapp/widgets/text_template.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class FeaturedProduct extends StatefulWidget {
  @override
  _FeaturedProductState createState() => _FeaturedProductState();
}

class _FeaturedProductState extends State<FeaturedProduct> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Container(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productProvider.products.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
                child: GestureDetector(
                  onTap: () {
                    changeScreen(
                        _,
                        Details(
                          product: productProvider.products[index],
                        ));
                  },
                  child: Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(-2, -1),
                              blurRadius: 5),
                        ]),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                  child: Align(
                                alignment: Alignment.center,
                                child: Loading(),
                              )),
                              Center(
                                child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  image: productProvider.products[index].image,
                                  height: 126,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextTemplate(
                                text: productProvider.products[index].name ??
                                    "id null",
                                textSize: 15,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(),
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
                                    text: productProvider.products[index].rating
                                        .toString(),
                                    textColor: grey,
                                    textSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: grey,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: grey,
                                  size: 16,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: TextTemplate(
                                text:
                                    "\$${productProvider.products[index].price / 100}",
                                textWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}
