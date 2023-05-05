import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../homescreen/controller/home_controller.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen>
    with SingleTickerProviderStateMixin {
  HomeController homeController = Get.put(HomeController());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1E2140),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          BottomSheet(
                            onClosing: () {},
                            builder: (context) => Container(
                              color: Color(0XFF1E2140),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 10, right: 10, left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          child: Image.asset(
                                              "${homeController.planetImageList[index]}"),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Distance To Sun",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/images/ic_distance.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "${homeController.planetDisSunList[index]}",
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Distance To Earth",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/images/ic_distance.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "${homeController.planetDisEarthList[index]}",
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 80,
                                        ),
                                        Container(
                                          height: 80,
                                          color: Color(0XFF3D3F6D),
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons
                                                    .keyboard_double_arrow_left,
                                                color: Colors.white70,
                                                size: 30,
                                              ),
                                              Text(
                                                "Back",
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 30),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 320,
                        child: Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.only(
                                left: 10, bottom: 10, right: 10, top: 60),
                            decoration: BoxDecoration(
                              color: Color(0XFF3D3F6D),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${homeController.planetNameList[index]}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Milkyway Galaxy",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "assets/images/ic_distance.png"),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${homeController.planetDisSunList[index]}",
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 15),
                                            ),
                                            Expanded(
                                              child: SizedBox(
                                                width: 10,
                                              ),
                                            ),
                                            Image.asset(
                                                "assets/images/ic_gravity.png"),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${homeController.planetGravList[index]}",
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${homeController.planetNameList[index]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${homeController.aboutList[index]}",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Positioned(
                  left: 120,
                  child: AnimatedBuilder(
                    builder: (context, child) => Transform.rotate(
                        angle: animationController!.value * pi * 2,
                        child: child),
                    animation: animationController!,
                    child: Container(
                      height: 120,
                      width: 120,
                      child: Image.asset(
                          "${homeController.planetImageList[index]}"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 80,
                    color: Color(0XFF3D3F6D),
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_left,
                            color: Colors.white70,
                            size: 30,
                          ),
                          Text(
                            "Back",
                            style: TextStyle(color: Colors.white70, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
