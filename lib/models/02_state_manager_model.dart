import 'package:get/get.dart';

class Orang {
  var nama = "panjul".obs;
  var umur = 30.obs;
}

//gamau make model yang ada observernya ==>nnatinya make update
class Orang2 {
  var nama;
  var umur;

  Orang2({this.nama, this.umur});
}

//model tanpa observer
class Orang3 {
  var nama;
  var umur;

  Orang3({this.nama, this.umur});
}
