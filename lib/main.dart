import 'package:flutter/material.dart';
import '03_uniq_id/03_uniqID.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: uniqID(),
    );
  }
}
