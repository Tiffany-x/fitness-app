import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  int a = 5;
//writing does not return a value

//future is used because this function returns nothing in the future
  Future<void> writeValue(key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //async and await is used bcz we are unsure when we will get an instance of this data
    //writing is setting, reading is getting
    sharedPreferences.setString(key, value);
  }

  Future<String> getValue(key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //?? checks whether the value is null and if so, return the following value
    return sharedPreferences.getString(key) ?? "User";
  }
}
