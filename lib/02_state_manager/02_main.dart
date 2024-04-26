import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManager_Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: counter02(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

// ignore: must_be_immutable
class counter02 extends StatelessWidget {
  var count = 0.obs; //dipantau di sini oleh obs d
  void add() {
    count++; //setiap ada penambahan ++
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        //diconsume hasil pemantauan obsnya di sini
        child: Obx(
          () => Text(
            "Angka $count", //harus ada yg diobservasi dari obs nya
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add();
        },
      ),
    );
  }
}
