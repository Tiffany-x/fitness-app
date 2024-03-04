import 'package:hello_world/views/home.dart';
import 'package:hello_world/views/homepage.dart';
import 'package:hello_world/views/login.dart';
import 'package:get/get.dart';
import 'package:hello_world/views/registration.dart';

class Routes {
  //list of all routes we will use
  static var routes = [
    GetPage(name: "/", page: () => Login()), //first page
    GetPage(name: "/registration", page: () => Registration()),
    GetPage(name: "/home", page: () => Home()),
    GetPage(name: "/homepage", page: () => HomePage()),
  ];
}
