import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hello_world/controller/homecontroller.dart';
import 'package:hello_world/utils/sharedpreferences.dart';
import '../configs/constants.dart';
import 'createStreak.dart';
import 'customtext.dart';

late String username = "user";
HomeController homeController = Get.put(HomeController());

MySharedPreferences myPrefs = MySharedPreferences();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 20;
    if (kDebugMode) {
      print(width.toString());
    }
    return Scaffold(
        backgroundColor: lightGrey,
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 60.0,
                        width: 300.0,
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(children: [
                          Obx(() => customText(
                                label:
                                    "Good Afternoon, ${homeController.loggedInUser}",
                                fontSize: 20,
                                labelColor: black,
                              ))
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100.0,
                    width: width,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: white),
                    padding: EdgeInsets.all(16.0),
                    child: Row(children: [
                      customText(
                        label: "4583 ",
                        fontSize: 40,
                        labelColor: red,
                      ),
                      customText(
                        label: "/ 8000 Steps",
                        fontSize: 20,
                        labelColor: grey,
                      ),
                      Container(width: 112),
                      Container(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.settings),
                        width: 30,
                      )
                    ]),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      customText(
                        label: "Today's Challenge",
                        fontSize: 24,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 200.0,
                      width: width,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/legpress.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                          Positioned.fill(
                              child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                  begin: FractionalOffset.topLeft,
                                  end: FractionalOffset.bottomRight,
                                  colors: [
                                    Colors.black,
                                    Colors.transparent,
                                  ],
                                )),
                            child: Row(
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              customText(
                                                label: "3 sets of 10 reps",
                                                labelColor: white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          customText(
                                            label: "20kg",
                                            labelColor: red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          customText(
                                            label: "Leg press",
                                            labelColor: white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ],
                                      )
                                    ]),
                                SizedBox(
                                  width: 175,
                                ),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 100,
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: white,
                                          ))
                                    ])
                              ],
                            ),
                          ))
                        ],
                      )),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      customText(
                        label: "Current Streak: 36",
                        fontSize: 24,
                      ),
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: white),
                      padding: EdgeInsets.all(10),
                      clipBehavior: Clip.hardEdge,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          for (int i = 0; i < 30; i++)
                            Container(
                              child: createStreak(
                                  actualDate: i + 1,
                                  iconImage: i < 4
                                      ? "assets/images/streak.png"
                                      : "assets/images/unstreak.png"),
                            )
                        ]),
                      )),
                  SizedBox(height: 55),
                  Container(
                    width: width / 2,
                    height: width / 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/workout.gif",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ]))));
  }
}
