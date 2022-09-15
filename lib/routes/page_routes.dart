import 'package:boilerplate_getx_flutter/feature/dashboardtab/dashboard_tab_page.dart';
import 'package:boilerplate_getx_flutter/feature/loader/loading_page.dart';
import 'package:boilerplate_getx_flutter/feature/login/login_page.dart';
import 'package:boilerplate_getx_flutter/feature/other/other_page.dart';
import 'package:get/get.dart';
import 'package:boilerplate_getx_flutter/binding/dashboard_tab_binding.dart';
import 'package:boilerplate_getx_flutter/binding/login_binding.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.loader,
      page: () => LoadingPage(),
    ),
    GetPage(
        name: PageName.users,
        page: () => DashBoardTabPage(),
        binding: DashBoardTabBinding()),
    GetPage(
        name: PageName.user,
        page: () => DashBoardTabPage(),
        binding: DashBoardTabBinding()),
    GetPage(
      name: PageName.other,
      page: () => OtherPage(),
    ),
  ];
}
