import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../utils/routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    getPages: Routes.routes,
  ));
}
