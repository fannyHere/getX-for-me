import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyThemeGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
            print("ubahhhh tema");
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
