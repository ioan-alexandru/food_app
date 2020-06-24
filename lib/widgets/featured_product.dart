import 'package:flutter/material.dart';
import 'package:foodapp/models/products.dart';
import 'package:foodapp/screens/details.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/util/screen_navigation.dart';
import 'package:foodapp/widgets/text_template.dart';

List<Product> featuredProductsList = [
  Product(
      name: 'Salmon pinwheel',
      rating: 5,
      imagePath: 'assets/images/salmonpinwheel.png',
      price: 12.99,
      wishList: true,
      vendor: 'Mamma Mia'),
  Product(
      name: 'Salmon pinwheel',
      rating: 5,
      imagePath: 'assets/images/salmonpinwheel.png',
      price: 12.99,
      wishList: true,
      vendor: 'Mamma Mia'),
  Product(
      name: 'Salmon pinwheel',
      rating: 5,
      imagePath: 'assets/images/salmonpinwheel.png',
      price: 12.99,
      wishList: false,
      vendor: 'Mamma Mia'),
  Product(
      name: 'Salmon pinwheel',
      rating: 5,
      imagePath: 'assets/images/salmonpinwheel.png',
      price: 12.99,
      wishList: true,
      vendor: 'Mamma Mia'),
  Product(
      name: 'Salmon pinwheel',
      rating: 5,
      imagePath: 'assets/images/salmonpinwheel.png',
      price: 12.99,
      wishList: true,
      vendor: 'Mamma Mia'),
];

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.42,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredProductsList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    changeScreen(context, Details(product: featuredProductsList[index]));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.42,
                    width: 200,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                          color: grey[300],
                          offset: Offset(15, 5),
                          blurRadius: 30,
                          spreadRadius: 1)
                    ]),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: featuredProductsList[index].wishList ? IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: red,
                            ),
                            onPressed: () {},
                          ) : IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: red,
                            ),
                            onPressed: () {},
                          )

                        ),
                        Image.asset(
                          featuredProductsList[index].imagePath,
                          height: 140,
                          width: 140,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextTemplate(
                                  text: featuredProductsList[index].name),
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
                                    text: featuredProductsList[index]
                                        .rating
                                        .toString(),
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
                              padding: const EdgeInsets.only(right: 8.0),
                              child: TextTemplate(
                                text: '\$${featuredProductsList[index].price}',
                                textWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
    );
  }
}
