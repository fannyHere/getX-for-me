import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBtSheet(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyBtSheet extends StatelessWidget {
  const MyBtSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("MyBottomSheet"),
      ),
      body: Center(
        child: Text(
            "Halo Fanny semoga sehat selalu dan diberikan kemudahan ya dalam setiap urusannya"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //BottomSheet biasa
          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) {
          //     return Padding(
          //       padding: EdgeInsets.only(
          //           bottom: MediaQuery.of(context)
          //               .viewInsets
          //               .bottom), //supaya field textnya ga ketutupan keyboard
          //       child: Container(
          //         height: 300,
          //         width: MediaQuery.of(context).size.width,
          //         color: Colors.amber,
          //         padding: EdgeInsets.all(10),
          //         child: Center(
          //           child: ListView(
          //             children: [
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // );
          //BottomSheet pakai GetX
          Get.bottomSheet(
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context)
                      .viewInsets
                      .bottom), //supaya field textnya ga ketutupan keyboard
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "SAVE",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            isScrollControlled: false,
            isDismissible: false,
          );
        },
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
