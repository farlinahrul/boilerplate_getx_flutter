import 'package:boilerplate_getx_flutter/feature/user/user/user_page.dart';
import 'package:boilerplate_getx_flutter/feature/user/user_list/user_list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boilerplate_getx_flutter/feature/other/other_page.dart';
import 'package:boilerplate_getx_flutter/utills/widget/colored_status_bar.dart';

import 'dashboard_tab_controller.dart';

class DashBoardTabPage extends StatelessWidget {
  const DashBoardTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardTabController>(
      builder: (controller) {
        return ColoredStatusBar(
          child: Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  const UsersPage(),
                  UserPage(),
                  const OtherPage(),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  border:
                      Border(top: BorderSide(color: Colors.white, width: 1.0))),
              child: BottomNavigationBar(
                onTap: controller.changeTabIndex,
                currentIndex: controller.tabIndex,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                unselectedItemColor: Colors.grey,
                items: [
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.search,
                    label: 'txt_menu_users'.tr,
                  ),
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.book,
                    label: 'txt_menu_user'.tr,
                  ),
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.bag,
                    label: 'txt_menu_other'.tr,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
