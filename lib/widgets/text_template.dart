import 'package:flutter/material.dart';
import 'package:foodapp/util/colors_util.dart';

class TextTemplate extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final FontWeight textWeight;

  const TextTemplate(
      {Key key,
      @required this.text,
      this.textSize,
      this.textColor,
      this.textWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSize ?? 17,
          color: textColor ?? black,
          fontWeight: textWeight ?? FontWeight.normal),
    );
  }
}
