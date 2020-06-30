import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/util/colors_util.dart';
import 'package:foodapp/widgets/text_template.dart';

List<Category> categoriesList = [
  Category(name: 'Salad', imagePath: 'assets/images/salad.png'),
  Category(name: 'Fish', imagePath: 'assets/images/fish.png'),
  Category(name: 'Hamburger', imagePath: 'assets/images/hamburger.png'),
  Category(name: 'Ice Cream', imagePath: 'assets/images/icecream.png'),
  Category(name: 'Steak', imagePath: 'assets/images/steak.png'),
  Category(name: 'Sushi', imagePath: 'assets/images/sushi.png'),
];

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      categoriesList[index].imagePath,
                      width: 45,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextTemplate(
                  text: categoriesList[index].name,
                  textSize: 14,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
