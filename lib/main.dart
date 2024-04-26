import 'package:flutter/material.dart';

import '02_state_manager/02_SIMPEL_getbuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Simple_GetBuilder(),
    );
  }
}
