import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boilerplate_getx_flutter/feature/user/widgets/user_list_builder.dart';
import 'package:boilerplate_getx_flutter/utills/widget/sm_app_bar.dart';
import 'package:boilerplate_getx_flutter/utills/widget/state_handle_widget.dart';
import 'user_controller.dart';

class SearchUserPage extends StatelessWidget {
  const SearchUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMAppBar.primaryAppbar(titleString: 'txt_menu_users'.tr),
      body: SafeArea(
        top: true,
        bottom: true,
        child: GetBuilder<UserController>(
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
