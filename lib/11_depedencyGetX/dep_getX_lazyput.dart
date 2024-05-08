import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyDepGetXLazyPut());
}

class MyDepGetXLazyPut extends StatelessWidget {
  //getlazyput ini ngcreate kelasnya pas masuk ke textpage
  //getlazyput ini ngga ada permanen  buat ngisi isian textnya
  final MyC = Get.lazyPut(
    () => MyContr(),
    tag: 'tag-text',
    fenix: true, //ini supaya screennya ngga kehapus permanen
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: DepGetXLazyPut(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DepGetXLazyPut extends StatelessWidget {
  final MyContr myC = Get.put(
    MyContr(),
    permanent: true,
    tag: 'tag-count', //untuk menduplikat controllernya
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(() => PageCount()),
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ],
        leading: IconButton(
          onPressed: () => Get.to(() => TextPage()),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(
          "HOMEPAGE",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

class PageCount extends StatelessWidget {
  final MyContr myC = Get.find<MyContr>(tag: 'tag-count');
  //final MyContr myC = Get.put(MyContr(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("yey"),
        // actions: [
        //   IconButton(
        //     onPressed: () => Get.to(() => TextPage()),
        //     icon: Icon(Icons.arrow_back),
        //   ),
        // ],
      ),
      body: Obx(
        () => Center(
          child: Text(
            "${myC.count}",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myC.add();
        },
        tooltip: "increment",
        child: Icon(Icons.add),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  //final MyContr myC = Get.find<MyContr>(tag: 'tag1'); //gandain controller dari atas dengan menyamakan tag1
  final MyContr myC = Get.put(
    MyContr(),
    permanent: false,
    tag: 'tag-text',
  ); //make mycontr yang beda dari yang di atas

  @override
  Widget build(BuildContext context) {
    // Set nilai teks pada controller dengan nilai saat ini
    //myC.textController.text = myC.textValue.value;

    return Scaffold(
      appBar: AppBar(
        title: Text("textpage"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextField(
            controller: myC.textController,
            //onChanged: myC.updateText,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

class MyContr extends GetxController {
  var count = 0.obs;
  void add() => count++;

  var textController = TextEditingController();
  // var textValue = "".obs;
  // void updateText(String value) => textValue.value = value;
}
