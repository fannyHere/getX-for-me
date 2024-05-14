import 'package:flutter/material.dart';
import '11_depedencyGetX/dep_getxcreate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGetCreate(),
    );
  }
}
