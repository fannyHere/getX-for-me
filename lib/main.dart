import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '05_getxworker/getx_workers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Workers_GetX(),
    );
  }
}
