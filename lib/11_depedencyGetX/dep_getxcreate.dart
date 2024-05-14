import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetCreate extends StatelessWidget {
  const MyGetCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: GetCreate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GetCreate extends StatelessWidget {
  const GetCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMEPAGE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            OutlinedButton(
              onPressed: () => Get.to(() => ShopPage()),
              child: Text(
                "SHOP Page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopPage extends StatelessWidget {
  final ShopController = Get.put(ShopC(), tag: 'total');
  final quantityC = Get.create(() => ShopC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOP PAGE"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ShopItem(),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(
          () => Text(
            "${ShopController.total}",
          ),
        ),
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  // const ShopItem({
  //   super.key,
  //   required this.ShopController,
  // });

  // final ShopC ShopController;
  final ShopController = Get.find<ShopC>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            ShopController.quantity.value--;
            Get.find<ShopC>(tag: 'total').total.value--;
          },
          icon: Icon(Icons.remove),
        ),
        Obx(
          () => Text(
            "${ShopController.quantity}",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            ShopController.quantity.value++;
            Get.find<ShopC>(tag: 'total').total.value++;
          },
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}

class ShopC extends GetxController {
  var quantity = 0.obs;
  var total = 0.obs;
}
