import 'package:get/get.dart';

class Reactive_CounterController extends GetxController {
  //study case 1 == increment dan decrement
  var counter =
      0.obs; //obs itu listener karena selalu memantai perubahan counter
  //klo reactive udah pasti pakai obs
  //klo reactive udah pasti pakai obs dan selalu reaktif terhadp perbubahan 0 yang terjadi

  //void increment() => counter++;
  //void increment() => counter.value + 1; // ini gabisa nambah UI updatenya karenayang diubah valuenya bukan RxInt nya
  void increment() => counter + 1;
  void decrement() => counter - 1;
}

class Simpel_CounterController extends GetxController {
  var counter = 0;

  void increment() {
    counter++;
    update(); //notify listener mirip kaya provider state management
  }
}
