import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planate/screens/homescreen/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1E2140),
        appBar: AppBar(
          backgroundColor: Color(0XFF1E2140),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "Galaxy Planets",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.toNamed("data", arguments: index);
                  },
                  child: Stack(
                    children: [
                      Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 60, bottom: 10, right: 10, top: 10),
                          decoration: BoxDecoration(
                            color: Color(0XFF3D3F6D),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${homeController.planetNameList[index]}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.more_vert,
                                            color: Colors.white70,
                                          ),
                                        ],
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
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
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
                      Positioned(
                        top: 50,
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
                    ],
                  ),
                ),
            itemCount: homeController.planetNameList.length),
      ),
    );
  }
}
