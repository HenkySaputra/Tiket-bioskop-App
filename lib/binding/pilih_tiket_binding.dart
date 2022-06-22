import 'package:get/get.dart';

import '../controller/pilih_tiket_controller.dart';

class PilihTiketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PilihTiketController>(
      () => PilihTiketController(),
    );
  }
}
