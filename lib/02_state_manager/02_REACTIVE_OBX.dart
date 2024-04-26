import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/02_counter_REACTIVE_SIMPEL.dart';

class Reactive_OBX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: reactive_OBX(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

class reactive_OBX extends StatelessWidget {
  final CountC = Get.put(Reactive_CounterController());

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
            "Angka ${CountC.counter}", //harus ada yg diobservasi dari obs nya
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CountC.increment();
        },
      ),
    );
  }
}
