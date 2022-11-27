import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan/Quiz/colors.dart';

Widget normalText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontFamily: "quick_seml",
      fontSize: 18,
      color: lightgrey,
    ),
  );
}

Widget headingText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontFamily: "quick_bold",
      fontSize: 18,
      color: Colors.red[400],
    ),
  );
}
