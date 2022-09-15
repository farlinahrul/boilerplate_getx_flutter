import 'package:get/get.dart';
import 'package:boilerplate_getx_flutter/feature/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
