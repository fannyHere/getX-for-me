import 'package:belajar_getx/04_lifecycle/lifecycle_STATEFUL.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Workers_GetX extends StatelessWidget {
  final myC = Get.put(MyController());
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              // Get.to(newPage()); //WARNING, consider using: "Get.to(() => Page())" in… from memory when they are no longer used.
              Get.to(() => newPage());
            },
            icon: Icon(
              Icons.navigate_next,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            textController.clear(); // Membersihkan teks di dalam TextField
            myC.reset();
          },
          icon: Icon(
            Icons.refresh,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
                () => Text("textbox ini berubah sekian kali: ${myC.count}")),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textController, //ini supaya bisa diclear
              //onChanged: (value) => print(value),
              onChanged: (value) => myC
                  .change(), //jadi klo ada perubahan didalam textbox nya maka akan change(add count++)
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  var data = 0.obs; //misal untuk everAll
  void change() => count++;

  void reset() => count.value = 0;

  @override
  void onInit() {
    print("oninit"); //instance has been created

    //ever(listener, (callback) => null)
    //listener itu melisten count, nanti klo berubah nanti dicallback

    // ever(
    //     //hanya untuk 1 listener aja dan dijalankan setiap mengetik huru/angka
    //     count,
    //     (callback) => print(
    //         "ini ever")); //ngedengerin count berapa x dan terprint sebanyak x oke gass

    everAll(
        //untuk >1 listener dan ini dijalankan setiap kali menambahkan huruf baru etc
        [
          count,
          data
        ],
        (callback) => print(
            "ini everAll")); //ngedengerin count berapa x dan terprint sebanyak x oke gass, dengan beberapa list

    once(
      //ini hanya dijalankan sekali pada awal ngetik saja
      count,
      (callback) => print("ini once"),
    );

    debounce(
        //biasanya untuk mencari di google penelusuran
        //ini hanya dijalankan sekali pada saat mengetik terakhir dan klo ga di time bisa langsung di enter ada datanya tapi klo ditime x detik baru muncul datanya
        count,
        (callback) => print("ini debounce"),
        time: Duration(seconds: 5));

    interval(
        //dijalan berkali-kali setiap x detik dan selama ada perubahan secara terus menerus x detik jalan x detik jalan
        count,
        (callback) => print("ini interval"),
        time: Duration(seconds: 5));

    super.onInit();
  }
}

class nextPage extends StatelessWidget {
  const nextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          "Hallo ini halaman 2",
        ),
      ),
    );
  }
}
