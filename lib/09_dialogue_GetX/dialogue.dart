import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../07_dynamicGetx/dynamic.dart';

class MyDialogueGetX extends StatelessWidget {
  const MyDialogueGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DialogGetX(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: must_be_immutable
class DialogGetX extends StatefulWidget {
  @override
  State<DialogGetX> createState() => _DialogGetXState();
}

class _DialogGetXState extends State<DialogGetX> {
  //var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Flutter Demo HomePage"),
      ),
      body: Center(
        child: Text("Angka 0"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          // setState(() {
          //   count++;
          // });

          Get.defaultDialog(
            title: "Judul",
            middleText: "Haloini Fanny",
            textCancel: "Cancel",
            onCancel: () => print("cancel"),
            textConfirm: "Okay",
            onConfirm: () {
              print("Okayyyy");
              Get.back();
              Get.to(HomePage());
            },
            confirmTextColor: Colors.white,
          );

          //cara 1 showdialogue
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return AlertDialog(
          //       title: Text("judul"),
          //       content: Text("ini desc"),
          //     );
          //   },
          // );
          // Get.defaultDialog(
          //   title: "Judul",
          //   middleText: "Description",
          //   barrierDismissible:
          //       false, //supaya backgroun selain batalkan dan oke gabisa di klik

          //   //default bawaan
          //   // textCancel: "batal",
          //   // cancelTextColor: Colors.pink,

          //   //custom cancel widget ==> default bawaan di atas akan hilang karena dicustom di sini
          //   cancel: ElevatedButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     child: Text(
          //       "Batalkan",
          //     ),
          //   ),

          //   //bawaan
          //   // textConfirm: "OKE Confirm",
          //   // confirmTextColor: Colors.red,
          //   // onConfirm: () {},

          //   //custom
          //   confirm: ElevatedButton(
          //     onPressed: () {},
          //     child: Text(
          //       "Oke",
          //     ),
          //   ),

          //   //klo mau nambahin buttonnya >1
          //   actions: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         "Pilihan 1",
          //       ),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         "Pilihan 2",
          //       ),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         "Pilihan 3",
          //       ),
          //     ),
          //   ],

          //   backgroundColor: Colors.green,
          //   radius: 30,
          // );
        },
      ),
    );
  }
}
