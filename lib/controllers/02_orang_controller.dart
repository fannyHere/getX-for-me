import 'package:get/get.dart';
import '../models/02_state_manager_model.dart';

//kasusnya ambil dari model yang diobs
class OrangController extends GetxController {
  var orang = Orang(); //ambil dari model Orang

  //Buat Functionnya:
  void changeUperCase() {
    orang.nama.value = orang.nama.value.toUpperCase();
  }

  void changeLowerCase() {
    orang.nama.value = orang.nama.value.toLowerCase();
  }
}

//kasusnya ambil dari model yang tidak diobserver ==> update
class OrangController2 extends GetxController {
  var orang3 = Orang3(nama: "Fanny", umur: 22).obs;

  //Buat Functionnya:
  void changeUperCase() {
    orang3.update(
      (val) {
        orang3.value.nama = orang3.value.nama.toString().toUpperCase();
      },
    );
  }

  void changeLowerCase() {
    orang3.update(
      (val) {
        orang3.value.nama = orang3.value.nama.toString().toLowerCase();
      },
    );
  }
}
