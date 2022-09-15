import 'package:boilerplate_getx_flutter/model/login_result.dart';
import 'package:boilerplate_getx_flutter/model/user.dart';

abstract class ModelFactory {
  factory ModelFactory.fromJson(Type type, Map<String, dynamic> json) {
    var strType = type.toString().replaceAll("?", "");
    if (strType == (User).toString()) {
      return User.fromJson(json);
    } else if (strType == (LoginResult).toString()) {
      return LoginResult.fromJson(json);
    } else {
      throw UnimplementedError('`$type` factory unimplemented.');
    }
  }
}
