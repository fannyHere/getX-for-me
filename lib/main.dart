import 'package:flutter/material.dart';
import '06_getxnavigation/pages/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetXNav(),
    );
  }
}
