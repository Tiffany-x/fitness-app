import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/controller/homecontroller.dart';
import 'package:hello_world/utils/sharedpreferences.dart';
import '../configs/constants.dart';
import 'customButton.dart';
import 'customtext.dart';
import 'customtextfield.dart';
import 'passwordtextfield.dart';

MySharedPreferences myPrefs = MySharedPreferences();
//controllers help us track what is in a textfield
TextEditingController uNameController = TextEditingController();
HomeController homeController = Get.put(HomeController());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    //uNameController.text = myPrefs.getValue("username");
    //all functions expecting a value in the future have another value called then
    myPrefs.getValue("username").then((value) {
      uNameController.text = value;
    });
    double width = MediaQuery.of(context).size.width - 80;
    return Scaffold(
      //This is the landing screen
      backgroundColor: lightGrey,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 100, 40, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //a widget that can accomodate many widgets
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/motivation.png",
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customText(
                    label: "Welcome Back!",
                    fontSize: 40,
                    labelColor: Colors.red,
                    fontWeight: FontWeight.w900,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              customText(label: "Username"),
              SizedBox(
                height: 10,
              ),
              CustomTextView(
                hint: "username",
                mainIcon: Icons.person,
                controller: uNameController,
              ),
              SizedBox(
                height: 20,
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
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                GestureDetector(
                  onTapDown: (TapDownDetails details) {
                    Navigator.pushNamed(context, "/registration");
                  },
                  child: const customText(
                    label: "Forgot Password?",
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
                    label: "Login",
                    action: loginIn,
                  ),
                  //customButton(label: "Login"),
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

loginIn() {
  myPrefs.writeValue("username", uNameController.text);
  homeController.updateUsername(uNameController.text);
  Get.offAndToNamed("/home");
}

toRegistration() {
  Get.toNamed("/registration");
}
