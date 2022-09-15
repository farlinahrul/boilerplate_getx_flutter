import 'package:boilerplate_getx_flutter/model/user.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'user_item.dart';

class PlacesShimmer extends StatelessWidget {
  const PlacesShimmer({Key? key}) : super(key: key);

  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
    colors: [Colors.grey, Colors.grey, Colors.white, Colors.grey, Colors.grey],
    stops: [0.0, 0.35, 0.5, 0.65, 1.0],
  );

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: gradient,
      child: _buildPlaceListShimmer(),
    );
  }
}

List<User> _dummyPlace() {
  List<User> data = [];

  for (int i = 0; i < 9; i++) {
    var usr = User(firstName: "name", lastName: "eman");
    data.add(usr);
  }
  return data;
}

ListView _buildPlaceListShimmer() {
  return ListView.builder(
    itemCount: _dummyPlace().length,
    itemBuilder: (context, index) {
      return UserListItem(
        index: index,
        mData: _dummyPlace()[index],
      );
    },
  );
}
