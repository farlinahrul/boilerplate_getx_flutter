import 'package:boilerplate_getx_flutter/feature/dashboardtab/dashboard_tab_controller.dart';
import 'package:boilerplate_getx_flutter/feature/user/user/user_controller.dart';
import 'package:boilerplate_getx_flutter/feature/user/user_list/user_list_controller.dart';
import 'package:get/get.dart';

class DashBoardTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardTabController>(() => DashBoardTabController());
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<UserListController>(() => UserListController());
  }
}
