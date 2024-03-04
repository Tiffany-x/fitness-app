import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../configs/constants.dart';
import '../controller/logincontroller.dart';

LoginController loginController = Get.put(LoginController());

class PasswordTextField extends StatelessWidget {
  final String? hint;
  final IconData? mainIcon;
  final IconData? prefIcon;
  final bool isPassword;
  final TextEditingController? controller;
  const PasswordTextField({
    super.key,
    this.hint,
    this.mainIcon,
    this.prefIcon,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextField(
          controller: controller,
          obscureText: loginController.isHidden.value,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hint,
            prefixIcon: Icon(mainIcon),
            suffixIcon: Obx(() => GestureDetector(
                  child: Icon(loginController.isHidden.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onTap: () => loginController.toggleHide(),
                )),
            fillColor: white,
            filled: true,
          ),
        ));
  }
}
