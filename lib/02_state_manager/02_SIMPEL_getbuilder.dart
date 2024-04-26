import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/02_counter_REACTIVE_SIMPEL.dart';

class Simple_GetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: simple_GetBuilder(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

class simple_GetBuilder extends StatelessWidget {
  //final CountC = Get.put(Simpel_CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        //diconsume hasil pemantauan obsnya di sini
        child: GetBuilder<Simpel_CounterController>(
          init:
              Simpel_CounterController(), //pengganti getput ==>> final CountC = Get.put(Simpel_CounterController());
          initState: (_) {},
          builder: (controller) {
            return Text(
              "Angka ${controller.counter}", //harus ada yg diobservasi dari obs nya
              style: TextStyle(
                fontSize: 30,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // CountC.increment(); //klo make cara final di atas
          Get.find<Simpel_CounterController>().increment();
        },
      ),
    );
  }
}
