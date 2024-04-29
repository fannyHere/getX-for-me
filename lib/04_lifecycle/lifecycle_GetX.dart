import 'package:flutter/material.dart';
import 'package:get/get.dart';

class life_cycle_Stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeCycle_GetX(),
    );
  }
}

class LifeCycle_GetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              Get.to(() => textPage());
            },
          ),
        ],
      ),
      body: Center(),
    );
  }
}

class textPage extends StatelessWidget {
  final textC = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text page"),
      ),
      body: TextField(
        controller:
            textC.myC, //ini supaya ngekeep text yang udah diinput ke textbox
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
