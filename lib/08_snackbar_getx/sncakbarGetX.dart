import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SnackGetX(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SnackGetX extends StatelessWidget {
  const SnackGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Halo SnackGetX"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            //cara snackbar biasa
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     duration: Duration(seconds: 2),
            //     content: Text(
            //       "Hallow",
            //     ),
            //   ),
            // );
            //cara snackbar GetX
            Get.snackbar(
              "FannyApp",
              "Hallo Fanny jangan lupa sholat ya",
              animationDuration: Duration(seconds: 2),
              backgroundColor: Colors.amber,
              backgroundGradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.white,
                ],
              ),
              borderColor: Colors.red,
              borderWidth: 5,
              borderRadius: 5,
              onTap: (snack) {
                print("MESSAGE");
                Get.to(MessagePage());
              },
            );
          },
        ),
      ),
    );
  }
}

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("PAGE MESSAGE"),
      ),
    );
  }
}
