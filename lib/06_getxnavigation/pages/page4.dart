import 'package:belajar_getx/06_getxnavigation/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageEmpat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(RouteName.page_5);
              },
              child: Text(
                "NextPage>>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.pop(context);
                // Get.offAll(
                //     PageLima()); //jadi pas pindah ke pageLima page sebelumnya dihapus biar ga riweh memory hapenya
                Get.back();
              },
              child: Text(
                "<<PrevPage",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
