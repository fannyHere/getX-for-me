import 'package:flutter/material.dart';
//import 'package:get/get.dart';

import '11_depedencyGetX/dep_getX.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDepGetX(),
    );
  }
}
