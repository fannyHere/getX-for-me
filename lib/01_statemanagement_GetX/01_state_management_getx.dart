import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/01_counter_controller.dart';

class MyStateManagementGetX extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amber,
                child: IconButton(
                  onPressed: () => themeC.changeTheme(),
                  icon: Icon(Icons.pallet),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: IconButton(
                  onPressed: () => counterC.decrement(),
                  icon: Icon(Icons.abc),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
