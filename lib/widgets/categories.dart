import 'package:flutter/material.dart';
import 'package:foodapp/providers/category.dart';
import 'package:foodapp/widgets/text_template.dart';
import 'package:provider/provider.dart';


class CategoryWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryProvider.categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        categoryProvider.categories[index].image,
                        width: 45,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextTemplate(
                    text: categoryProvider.categories[index].name,
                    textSize: 14,
                  )
                ],
              ),
            );
          }),
    );
  }
}
