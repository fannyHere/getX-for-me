import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("ProductID ${Get.arguments}"),
        title: Text("Product ID ${Get.parameters['id']}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text("Product id ${Get.arguments}"), //untuk nangkap arguments
            Text(
                "Product Name ${Get.parameters['name']}"), //untuk nangkap parameters
            Text("Product Merk ${Get.parameters['merk']}")
          ],
        ),
      ),
    );
  }
}
