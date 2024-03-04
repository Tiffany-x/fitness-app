import 'package:flutter/material.dart';
import 'package:hello_world/configs/constants.dart';

class customText extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color labelColor;
  final FontWeight fontWeight;
  final TextDecoration decoration;
  final Action? goTo;
  const customText({
    super.key,
    required this.label,
    this.fontSize = 16,
    this.labelColor = black,
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
    this.goTo,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: labelColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration: decoration,
          decorationColor: labelColor),
    );
  }
}
