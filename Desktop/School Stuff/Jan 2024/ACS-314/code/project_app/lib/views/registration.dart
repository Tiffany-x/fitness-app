import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../configs/constants.dart';
import 'customButton.dart';
import 'customtext.dart';
import 'customtextfield.dart';
import 'passwordtextfield.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 80;
    return Scaffold(
      //This is the landing screen
      backgroundColor: lightGrey,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 50, 40, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //a widget that can accomodate many widgets
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/motivation.png",
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customText(
                    label: "Register",
                    fontSize: 30,
                    labelColor: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              customText(label: "Username"),
              SizedBox(
                height: 10,
              ),
              CustomTextView(
                hint: "username",
                mainIcon: Icons.person,
              ),
              SizedBox(
                height: 10,
              ),
              customText(label: "Phone Number"),
              SizedBox(
                height: 10,
              ),
              CustomTextView(
                hint: "07XXXXXXXX",
                mainIcon: Icons.numbers,
              ),
              SizedBox(
                height: 20,
              ),
              customText(label: "E-mail"),
              SizedBox(
                height: 10,
              ),
              CustomTextView(
                hint: "youremail@gmail.com",
                mainIcon: Icons.mail,
              ),
              SizedBox(
                height: 10,
              ),
              customText(label: "Password"),
              SizedBox(
                height: 10,
              ),
              PasswordTextField(
                hint: "Enter your password",
                mainIcon: Icons.password_rounded,
                prefIcon: Icons.visibility,
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              customText(label: "Repeat Password"),
              SizedBox(
                height: 10,
              ),
              PasswordTextField(
                hint: "Repeat your password",
                mainIcon: Icons.password_rounded,
                prefIcon: Icons.visibility,
                isPassword: true,
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                GestureDetector(
                  onTapDown: (TapDownDetails details) {
                    Navigator.pushNamed(context, "/");
                  },
                  child: const customText(
                    label: "Already have an account?",
                    fontSize: 14,
                    labelColor: red,
                    decoration: TextDecoration.underline,
                  ),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                    label: "Register",
                    action: () => Get.offAndToNamed("/home"),
                  ),
                ],
              )
            ],
          ),
          //        mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
