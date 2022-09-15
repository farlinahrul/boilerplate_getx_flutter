import 'package:boilerplate_getx_flutter/data/remote/api_services.dart';
import 'package:boilerplate_getx_flutter/data/remote/base/base_object_controller.dart';
import 'package:boilerplate_getx_flutter/data/remote/errorhandler/error_handler.dart';
import 'package:boilerplate_getx_flutter/model/user.dart';
import 'package:flutter/cupertino.dart';

class UserController extends BaseObjectController<User> {
  TextEditingController idController = TextEditingController();

  void refreshPage() {}

  Future<void> getUser() async {
    loadingState();
    await client.then(
      (value) => value
          .getUserById(int.parse(idController.text))
          .validateResponse()
          .then((data) {
        setFinishCallbacks(data.result);
      }).handleError((onError) {
        debugPrint("error : $onError");
        finishLoadData(errorMessage: onError.toString());
      }),
    );
  }
}
