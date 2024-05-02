import 'package:belajar_getx/06_getxnavigation/routes/route_name.dart';
import 'package:get/get.dart';

import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';
import '../pages/page4.dart';
import '../pages/page5.dart';

class AppPage {
  static final page = [
    GetPage(name: RouteName.page_1, page: () => PageSatu()),
    GetPage(name: RouteName.page_2, page: () => PageDua()),
    GetPage(name: RouteName.page_3, page: () => PageTiga()),
    GetPage(name: RouteName.page_4, page: () => PageEmpat()),
    GetPage(name: RouteName.page_5, page: () => PageLima()),
  ];
}
