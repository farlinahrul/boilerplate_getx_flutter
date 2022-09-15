import 'package:boilerplate_getx_flutter/feature/user/user_list/widgets/user_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../user_list_controller.dart';

class ListUserbuilder extends StatelessWidget {
  const ListUserbuilder(
    this.controller, {
    Key? key,
  }) : super(key: key);
  final UserListController controller;
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: controller.hasNext,
      controller: controller.refreshController,
      onRefresh: controller.getUsers,
      onLoading: controller.loadNextPage,
      child: ListView.builder(
        itemCount: controller.dataList.length,
        itemBuilder: (context, index) {
          return UserListItem(
            index: index,
            mData: controller.dataList[index],
          );
        },
      ),
    );
  }
}
