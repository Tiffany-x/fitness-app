import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../configs/constants.dart';
import '../controller/homecontroller.dart';
import 'homepage.dart';
import 'login.dart';
import 'registration.dart';

var screens = [
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
];
HomeController homeController = Get.put(HomeController());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: ,
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.house,
            color: white,
          ),
          Icon(
            Icons.settings,
            color: white,
          ),
          Icon(
            Icons.list,
            color: white,
          ),
          Icon(
            Icons.person,
            color: white,
          ),
        ],
        color: black,
        buttonBackgroundColor: grey,
        backgroundColor: lightGrey,
        onTap: (index) {
          homeController.updateSelectPage(index);
        },
      ),
      body: Obx(() => Center(child: screens[homeController.selectPage.value])),
    );
  }
}
