import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TextController extends GetxController {
  var nama = "".obs;
  var usia = "".obs;

  final namaLengkapCtrl = TextEditingController();
  final usiaCtrl = TextEditingController();

  onPressed() {
    nama = namaLengkapCtrl.text.obs;
    usia = usiaCtrl.text.obs;
  }

  @override
  void onClose() {
    namaLengkapCtrl.dispose();
    usiaCtrl.dispose();
    super.onClose();
  }
}

enum Tiket { all, VVIP, VIP, REGULER }

class CheckBoxController extends GetxController {
  var tiket = Tiket.all.obs;
  List semua = [].obs;

  void getTiket(Tiket value) {
    if (tiket == Tiket.VVIP) {
      semua = ['VVIP'];
    } else if (tiket == Tiket.VIP) {
      semua = ['VIP'];
    } else
      ['REGULER'];
  }

  onChanged(value) {
    tiket(value);
  }
}
