import 'package:flutter/material.dart';
import 'package:galaxy_planate/screens/datascreen/view/data_screen.dart';
import 'package:get/get.dart';

import 'screens/homescreen/view/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (p0) => HomeScreen(),
        "data": (p0) => DataScreen(),
      },
    ),
  );
}
