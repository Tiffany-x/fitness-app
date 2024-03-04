import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectPage = 0.obs;
  var loggedInUser = "".obs;
  updateSelectPage(index) {
    selectPage.value = index;
  }

  updateUsername(name) {
    loggedInUser.value = name;
  }
}
