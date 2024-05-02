import 'package:belajar_getx/06_getxnavigation/routes/route_name.dart';

import '../routes/page_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXNav extends StatelessWidget {
  const GetXNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
      initialRoute: '/',
      //unknownRoute: GetPage(name: '/404', page: () => PageNotFound(),), //pas akses suatu halaman web tapi ga ketemu nah itu bisa make unknownRoute
      getPages: AppPage.page,
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageSatu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Tipe 1 => Navigator dengan nama: push (ada icon back diappBar) dan pushReplacement (gaada icon backdi appBar)
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => PageDua(),
                //   ),
                // );
                //Tipe 2 => Navigator dengan nama dengan GetX
                // navigator!.push(
                //   MaterialPageRoute(
                //     builder: (_) => PageDua(),
                //   ),
                // );
                //Tipe 3 => Navigator tanpa nama dengan GetX tipe push
                //Get.to(PageDua());
                //pakai arguments===>
                //Get.to(PageDua(), arguments: "Dari Page1");
                //Tipe 4  =>Navigator tanpa nama dengan GetX tipe pushReplacement
                //Get.off(PageDua());
                //Tipe 5 => Navigator pakai nama yang udah didaftrain ke route
                //Get.toNamed('/page-2'); //gausa import page
                //Tipe 6 => udah disetting di abstract dan rutename page
                Get.toNamed(RouteName.page_2);
              },
              //klomau make async
              // onPressed: () async {
              //   var data = await Get.to(PageDua());
              //   print("HASIL : $data");
              // },
              child: Text(
                "NextPage>>>",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
