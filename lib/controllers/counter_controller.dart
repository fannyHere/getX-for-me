import 'package:get/get.dart';

class CounterController extends GetxController {
  //study case 1 == increment dan decrement
  var counter =
      0.obs; //obs itu listener karena selalu memantai perubahan counter

  //void increment() => counter++;
  //void increment() => counter.value + 1; // ini gabisa nambah UI updatenya karenayang diubah valuenya bukan RxInt nya
  void increment() => counter + 1;
  void decrement() => counter - 1;
}

class ThemeController extends GetxController {
//study case 2 == ganti tema
  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;
}
