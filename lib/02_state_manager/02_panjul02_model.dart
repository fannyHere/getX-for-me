import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/02_state_manager_model.dart';

class StateManager_Panjul02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: panjul02(), //klo provider sama bloc ini diwrapping gitu
    );
  }
}

// ignore: must_be_immutable
class panjul02 extends StatelessWidget {
  var orang2 = Orang2(nama: "Joni", umur: 40).obs;

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
            "nama saya ${orang2.value.nama}", //harus ada yg diobservasi dari obs nya
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          orang2.update(
            (_) {
              orang2.value.nama = orang2.value.nama.toString().toUpperCase();
            },
          );
        },
      ),
    );
  }
}
