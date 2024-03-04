import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/configs/constants.dart';
import 'package:hello_world/controller/logincontroller.dart';

class CustomTextView extends StatelessWidget {
  final String? hint;
  final IconData? mainIcon;
  final IconData? prefIcon;
  final TextEditingController?
      controller; //this should actually be required, not nullable
  const CustomTextView({
    super.key,
    this.hint,
    this.mainIcon,
    this.prefIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
        prefixIcon: Icon(mainIcon),
        fillColor: white,
        filled: true,
      ),
    );
  }
}
