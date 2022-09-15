import 'package:boilerplate_getx_flutter/feature/dashboardtab/dashboard_tab_controller.dart';
import 'package:boilerplate_getx_flutter/feature/dialog/dialog_controller.dart';
import 'package:boilerplate_getx_flutter/feature/user/user_controller.dart';
import 'package:get/get.dart';
class DashBoardTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardTabController>(() => DashBoardTabController());
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<DialogController>(() => DialogController());
  }
}
