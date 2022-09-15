import 'package:get/get.dart';
import 'package:boilerplate_getx_flutter/feature/auth/auth_controller.dart';
import 'package:boilerplate_getx_flutter/model/user.dart';

class OtherController extends GetxController {
  final AuthController authController = AuthController.find;

  User? get user => authController.user;

  Future<void> signOut() async {
    await authController.signOut();
  }
}
