import 'package:flutter/material.dart';
import '09_dialogue_GetX/dialogue.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDialogueGetX(),
    );
  }
}
