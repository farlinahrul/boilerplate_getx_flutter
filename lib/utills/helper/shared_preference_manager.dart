import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class SharedPreferenceManager {
  var _preference = Get.find<SharedPreferences>();
  String _isFirstInstall = "is_first_install";

  // Is First Install
  //
  bool getIsFirstInstall() {
    final data = _preference.getBool(_isFirstInstall);
    return data ?? true;
  }

  Future setIsFirstInstall({required bool value}) async {
    return await _preference.setBool(_isFirstInstall, value);
  }

  clearData() async {}
}
