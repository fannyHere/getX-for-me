import 'package:belajar_getx/07_dynamicGetx/routes/dynamic_app_pages.dart';
import 'package:belajar_getx/07_dynamicGetx/routes/dynamic_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetX_dynamic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //nge routees secara manual ngga pake folder routes
      // getPages: [
      //   GetPage(name: '/', page: () => HomePage()),
      //   GetPage(name: '/product', page: () => ProductPage()),
      //   GetPage(name: '/product/:id?', page: () => DetailPage()),
      // ],
      //ngeroutess pake folder routess
      getPages: DynamicPage.pages,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(RouteName.product),
          child: Text(
            "All Product >>>",
          ),
        ),
      ),
    );
  }
}
