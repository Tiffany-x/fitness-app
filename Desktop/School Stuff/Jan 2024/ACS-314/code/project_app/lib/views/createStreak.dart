import 'package:flutter/material.dart';
import 'package:hello_world/views/customtext.dart';

class createStreak extends StatelessWidget {
  final int actualDate;
  final double size;
  final String iconImage;

  const createStreak({
    super.key,
    required this.actualDate,
    required this.iconImage,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(iconImage),
          fit: BoxFit.cover,
        ),
      ),
      child: customText(
        label: actualDate.toString(),
        fontWeight: FontWeight.bold,
      ),
      height: size,
      width: size,
    );
  }
}
