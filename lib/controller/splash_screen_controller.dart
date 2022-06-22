import 'dart:async';

import 'package:get/get.dart';
import 'package:tiket_bioskop_1/landing_page.dart';
import 'package:tiket_bioskop_1/main.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      Get.off(LandingPage());
    });
  }
}
