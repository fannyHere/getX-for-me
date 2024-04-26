import 'package:flutter/material.dart';
import 'package:get/get.dart';

class uniqID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: UniqID(),
    );
  }
}

class UniqID extends StatelessWidget {
  //final CountC = Get.put(uniqidController());
  //uniqID itu cuma ada di state manager SIMPLE using GetBuilder
  //klomau cepet dan cuma ada perubahan di variabelnya pake OBX
  //reactive setengah bisa pake GetX tapi dia ada beberapa parameter-parameternya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<uniqidController>(
              id: "Fanny", //ini adalah uniq ID
              init: uniqidController(),
              initState: (_) {},
              builder: (controller) {
                return Text(
                  "Fanny ${controller.countId}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
            GetBuilder<uniqidController>(
              id: "Fanda", //ini adalah uniq ID
              init: uniqidController(),
              initState: (_) {},
              builder: (controller) {
                return Text(
                  "Fanda ${controller.countId}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
            GetBuilder<uniqidController>(
              id: "Fasrah", //ini adalah uniq ID
              init: uniqidController(),
              initState: (_) {},
              builder: (controller) {
                return Text(
                  "Fasrah ${controller.countId}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<uniqidController>().add();
        },
      ),
    );
  }
}

class uniqidController extends GetxController {
  var countId = 0;

  void add() {
    countId++;
    //update(); //pada awalnya si statenya tidak berubah sendirian
    update([
      "Fanny",
      "Fanda",
      "Fasrah"
    ]); //pada akhirnya si statenya berubah sendirian
  }
}
