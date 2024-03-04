import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/views/customtext.dart';

class customButton extends StatelessWidget {
  final VoidCallback? action;
  final String label;
  const customButton({
    super.key,
    required this.label,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: action,
        child: customText(
          label: label,
          fontSize: 16,
        ));
  }
}
