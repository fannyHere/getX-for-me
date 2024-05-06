import 'package:belajar_getx/07_dynamicGetx/detail.dart';
import 'package:belajar_getx/07_dynamicGetx/dynamic.dart';
import 'package:belajar_getx/07_dynamicGetx/product.dart';
import 'package:get/get.dart';
import 'dynamic_routes_name.dart';

class DynamicPage {
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage()),
    GetPage(name: RouteName.product, page: () => ProductPage()),
    //GetPage(name: '/product/:id?', page: () => DetailPage()),
    GetPage(name: RouteName.product + '/:id?', page: () => DetailPage()),
  ];
}
