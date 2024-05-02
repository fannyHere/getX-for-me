import 'package:belajar_getx/06_getxnavigation/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageDua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Tipe 1 => Navigator dengan nama: push (ada icon back diappBar) dan pushReplacement (gaada icon backdi appBar)
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => PageTiga(),
            //       ),
            //     );
            //   },
            //Tipe 2 => Navigator dengan nama dengan GetX
            // ElevatedButton(
            //   onPressed: () {
            //     navigator!.push(
            //       MaterialPageRoute(
            //         builder: (_) => PageDua(),
            //       ),
            //     );
            //   },
            //Tipe 3 => Navigator tanpa nama dengan GetX
            ElevatedButton(
              onPressed: () {
                //Get.to(PageTiga());
                Get.toNamed(RouteName.page_3);
              },
              child: Text(
                "NextPage>>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Tipe 1 => button back ke page2
                //Navigator.pop(context);
                //Tipe 2 => back button
                //navigator!.pop();
                //Tipe 3 => backbutton tipe push
                Get.back();
                //Tipe 4 => nagkep data hasil async await
                // Get.back(
                //     result:
                //         "INI DARI PAGE 2 ya FAN"); //lempar argumen back ke page satu
              },
              child: Text(
                "<<PrevPage",
              ),
            ),
            //Text(Get.arguments.toString()), //menangkap argumen dari page 1
          ],
        ),
      ),
    );
  }
}
