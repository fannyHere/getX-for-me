import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyGetPutAsync extends StatelessWidget {
  const MyGetPutAsync({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: GetPutAsync(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GetPutAsync extends StatelessWidget {
  const GetPutAsync({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetPutAsync"),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                CountPage(),
              );
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
    );
  }
}

class CountPage extends StatelessWidget {
  final count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CountPage"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "$count",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.putAsync<SharedPreferences>(
          () async {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setInt('counter', 99);
            count.value = prefs.getInt('counter')!.toInt();
            return prefs;
          },
        ),
      ),
    );
  }
}

// class MyCont extends GetxController {
//   final count = 0.obs;

//   Future<void> setData() async {
    
//   }
// }
