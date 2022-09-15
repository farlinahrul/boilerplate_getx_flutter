import 'package:boilerplate_getx_flutter/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:boilerplate_getx_flutter/data/remote/api_services.dart';
import 'package:boilerplate_getx_flutter/data/remote/base/base_list_controller.dart';
import 'package:boilerplate_getx_flutter/data/remote/errorhandler/error_handler.dart';

class UserController extends BaseListController<User> {
  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  @override
  void refreshPage() {
    getUsers();
  }

  @override
  void loadNextPage() {
    getUsers(page: page + 1);
  }

  Future<void> getUsers({int page = 1}) async {
    loadingState();
    await client.then(
      (value) => value.getUsers().validateResponse().then((data) {
        hasNext = data.data!.isNotEmpty;
        this.page = page;
        if (page == 1) {
          dataList.clear();
          setFinishCallbacks(data.data ?? []);
        } else {
          setFinishCallbacks(data.data ?? []);
        }
      }).handleError((onError) {
        debugPrint("error : $onError");
        finishLoadData(errorMessage: onError.toString());
      }),
    );
  }
}
