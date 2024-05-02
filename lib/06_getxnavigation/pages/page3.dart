import 'package:belajar_getx/06_getxnavigation/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageTiga"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => PageEmpat(),
                //   ),
                //);
                Get.toNamed(RouteName.page_4);
              },
              child: Text(
                "NextPage>>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
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
