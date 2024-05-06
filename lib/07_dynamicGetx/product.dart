import 'package:belajar_getx/07_dynamicGetx/routes/dynamic_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALL PRODUCT",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //onPressed: () => Get.toNamed('/product-detail', arguments: 1),
              onPressed: () => Get.toNamed(RouteName.product +
                  "/1?name=Laptop+saya+baru&merk=Macbook+Pro+16/1TB"),
              child: Text(
                "Products 1",
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteName.product +
                  '/2?name=Handphone+saya+baru&merk=iPhone+15+Pro+8/1TB'),
              child: Text(
                "Products 2",
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteName.product +
                  '/3?name=iPad+saya+baru&merk=+iPad+air+8/1TB'),
              child: Text(
                "Products 3",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
