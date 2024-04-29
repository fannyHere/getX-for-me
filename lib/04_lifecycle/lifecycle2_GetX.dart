import 'package:flutter/material.dart';
import 'package:get/get.dart';

class life_cycle_Stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeCycle_GetX(),
    );
  }
}

class LifeCycle_GetX extends StatelessWidget {
  // final countC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => textPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
          //child:
          //part2_countWidget(),
          ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Get.find<CounterController>().add();
      //     countC.add();
      //   },
      // ),
    );
  }
}

class textPage extends StatefulWidget {
  @override
  State<textPage> createState() => _textPageState();
}

class _textPageState extends State<textPage> {
  final myC =
      TextEditingController(); //setiap kita menginisialisasi controller maka harus make dispose, agar tidka terjadi kebocoran

  @override
  void dispose() {
    myC.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text page"),
      ),
      body: TextField(
        controller: myC,
      ),
    );
  }
}
