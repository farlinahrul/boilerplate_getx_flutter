import 'package:flutter/material.dart';
import 'package:boilerplate_getx_flutter/data/remote/api_services.dart';
import 'package:boilerplate_getx_flutter/data/remote/base/base_object_controller.dart';
import 'package:boilerplate_getx_flutter/data/remote/base/base_refresher_status.dart';
import 'package:boilerplate_getx_flutter/feature/auth/auth_controller.dart';
import 'package:boilerplate_getx_flutter/model/user.dart';
import 'package:boilerplate_getx_flutter/data/remote/errorhandler/error_handler.dart';

class LoginController extends BaseObjectController<User> {
  final AuthController authController = AuthController.find;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  // void signInWithEmailAndPassword() async {
  //   loadingState();
  //   await client.then((value) => value
  //           .searchUsers(keyword: "farlinahrul", perPage: 20, page: 1)
  //           .validateStatus()
  //           .then((value) {
  //         authController.saveAuthData(
  //           user: value.result!.user!,
  //           token: value.result!.token!,
  //         );
  //         finishLoadData();
  //         authController.setAuth();
  //       }).handleError((onError) {
  //         finishLoadData(errorMessage: onError);
  //       }));
  // }

  void bypassLogin() async {
    status = RefresherStatus.loading;
    update();
    await Future.delayed(const Duration(seconds: 2));
    var user = User(
      firstName: "depan",
      lastName: "belakang",
    );
    authController.saveAuthData(user: user, token: "a");
    finishLoadData();
    authController.setAuth();
  }
}
