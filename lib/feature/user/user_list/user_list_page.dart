import 'package:boilerplate_getx_flutter/feature/user/user_list/widgets/user_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boilerplate_getx_flutter/utills/widget/sm_app_bar.dart';
import 'package:boilerplate_getx_flutter/utills/widget/state_handle_widget.dart';
import 'user_list_controller.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMAppBar.primaryAppbar(titleString: 'txt_menu_users'.tr),
      body: SafeArea(
        top: true,
        bottom: true,
        child: GetBuilder<UserListController>(
          builder: (controller) {
            return StateHandleWidget(
              loadingEnabled: controller.isShimmering,
              emptyEnabled: controller.isEmptyData,
              emptySubtitle: 'txt_empty_user'.tr,
              errorEnabled: controller.isError,
              errorTitle: 'txt_error_general'.tr,
              onRetryPressed: () {
                controller.refreshPage();
              },
              body: ListUserbuilder(controller),
            );
          },
        ),
      ),
    );
  }
}
