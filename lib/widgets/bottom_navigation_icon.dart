import 'package:flutter/material.dart';
import 'package:foodapp/widgets/text_template.dart';

class BottomNavIcon extends StatelessWidget {
  final String imagePath;
  final String text;

  const BottomNavIcon({Key key, this.imagePath, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 20,
            height: 20,
          ),
          SizedBox(
            height: 1,
          ),
          TextTemplate(text: text)
        ],
      ),
    );
  }
}
