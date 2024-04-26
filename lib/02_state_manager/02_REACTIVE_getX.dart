import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/02_counter_REACTIVE_SIMPEL.dart';

class Reactive_GetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: reactive_GetX(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

class reactive_GetX extends StatelessWidget {
  // final CountC = Get.put(Reactive_CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        //diconsume hasil pemantauan obsnya di sini
        child: GetX<Reactive_CounterController>(
          init:
              Reactive_CounterController(), //ini buat ngeput // final CountC = Get.put(Reactive_CounterController());
          // initState: Reactive_CounterController() {},
          builder: (controller) {
            return Text(
              "Angka ${controller.counter.value}", //harus ada yg diobservasi dari obs nya
              style: TextStyle(
                fontSize: 30,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<Reactive_CounterController>().increment();
        },
      ),
    );
  }
}
