import 'package:belajar_getx/controllers/02_orang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManager_PanjulRapih03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: panjulRapih03(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

// ignore: must_be_immutable
class panjulRapih03 extends StatelessWidget {
  final OrangC = Get.put(OrangController2());

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
            "nama saya ${OrangC.orang3.value.nama}", //harus ada yg diobservasi dari obs nya
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          OrangC.changeUperCase();
        },
      ),
    );
  }
}
