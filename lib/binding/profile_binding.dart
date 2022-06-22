import 'package:get/get.dart';

import 'package:tiket_bioskop_1/controller/user_controller.dart';

class UserControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(),
    );
  }
}
