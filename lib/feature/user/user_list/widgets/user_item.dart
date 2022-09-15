import 'package:boilerplate_getx_flutter/model/user.dart';
import 'package:flutter/material.dart';

class UserListItem extends StatelessWidget {
  final int index;
  final User mData;
  const UserListItem({Key? key, required this.index, required this.mData})
      : super(key: key);
  final image = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: () {
          // Get.toNamed(PageName., arguments: mData.id.toString());
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 30,
            ),
            title: Text(mData.firstName ?? ''),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                mData.lastName ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
