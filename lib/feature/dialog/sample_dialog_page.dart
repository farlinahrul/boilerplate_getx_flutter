import 'package:boilerplate_getx_flutter/feature/dialog/dialog_controller.dart';
import 'package:boilerplate_getx_flutter/utills/helper/constant.dart';
import 'package:boilerplate_getx_flutter/utills/helper/validator.dart';
import 'package:boilerplate_getx_flutter/utills/widget/primary_button.dart';
import 'package:boilerplate_getx_flutter/utills/widget/state_handle_widget.dart';
import 'package:boilerplate_getx_flutter/utills/widget/statefull_wrapper.dart';
import 'package:boilerplate_getx_flutter/utills/widget/text/text_inter.dart';
import 'package:boilerplate_getx_flutter/utills/widget/text_with_plain_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogPage extends StatelessWidget {
  DialogPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('txt_menu_dialog'.tr),
      ),
      body: GetBuilder<DialogController>(
        builder: (controller) {
          return Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TextWithPlainTextField(
                    title: "ID USER",
                    labelText: "Input ID USER",
                    controller: controller.idController,
                    validator: Validator().number,
                    onChanged: (value) => controller.update(),
                  ),
                  PrimaryButton(
                    title: "SEARCH",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.getUser();
                      }
                    },
                  ),
                  Expanded(
                    child: StateHandleWidget(
                      loadingEnabled: controller.isLoading,
                      emptyEnabled: controller.isEmptyData,
                      emptySubtitle: 'txt_empty_user'.tr,
                      errorEnabled: controller.isError,
                      errorTitle: 'txt_error_general'.tr,
                      onRetryPressed: () {
                        controller.refreshPage();
                      },
                      body: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TextInter(
                              text: "HASIL",
                              size: 14,
                              fontWeight: Weightenum.bold,
                            ),
                            TextInter(
                              text: 'id: ${controller.mData?.id ?? ""}',
                              size: 14,
                              fontWeight: Weightenum.regular,
                            ),
                            TextInter(
                              text:
                                  'first name: ${controller.mData?.firstName ?? ""}',
                              size: 14,
                              fontWeight: Weightenum.regular,
                            ),
                            TextInter(
                              text:
                                  'last name: ${controller.mData?.lastName ?? ""}',
                              size: 14,
                              fontWeight: Weightenum.regular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
