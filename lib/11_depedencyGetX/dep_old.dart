import 'package:flutter/material.dart';

void main() {
  runApp(MyDepOld());
}

class MyDepOld extends StatelessWidget {
  final myCon =
      MyCont(); //ngecreate class //ini kelas mau diinjeksi ke class homepage

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homies(myCon), //ini kelas udah diinjeksi di sini
      debugShowCheckedModeBanner: false,
    );
  }
}

class homies extends StatelessWidget {
  final myCon; //jan lupa taro sini jugaaa

  homies(this.myCon); //injeksi lagi di constractornya

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MyCont {}
