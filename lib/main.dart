import 'package:flutter/material.dart';
import '14_changeTheme_GetX/changeTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyThemeGetX(),
    );
  }
}
