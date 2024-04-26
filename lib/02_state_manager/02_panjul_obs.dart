import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/02_state_manager_model.dart';

class StateManager_Panjul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: panjul01(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

// ignore: must_be_immutable
class panjul01 extends StatelessWidget {
  var orang = Orang();

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
            "nama saya ${orang.nama.value}", //harus ada yg diobservasi dari obs nya
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          orang.nama.value = orang.nama.value.toUpperCase();
        },
      ),
    );
  }
}
