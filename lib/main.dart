import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final C = Get.put(CounterController()); //cukup taro sini aja
  final T = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(), //klo provider sama bloc ini diwrapping gitu
        theme: T.isDark.value ? ThemeData.dark() : ThemeData.light(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  final counterC = Get.find<CounterController>(); //ini turunan dari atas
  final themeC = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("belajar GetX"),
        backgroundColor: Color.fromRGBO(194, 159, 201, 1),
      ),
      body: Column(
        children: [
          Center(
            child: Obx(
              () => Text(
                "Angka ${counterC.counter}",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () => themeC.changeTheme(),
              icon: Icon(Icons.pallet),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterC.decrement(),
      ),
    );
  }
}
