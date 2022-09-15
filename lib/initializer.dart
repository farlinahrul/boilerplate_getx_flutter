import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/local/storage/storage_constants.dart';
import 'feature/auth/auth_controller.dart';

class Initializer {
  static Future<void> init() async {
    try {
      _initScreenPreference();
      await globalLocalData();
      globalController();
    } catch (err) {
      rethrow;
    }
  }

  static globalController() {
    Get.put<AuthController>(AuthController());
  }

  static globalLocalData() async {
    // Global Local Database
    await Get.putAsync<SharedPreferences>(() async {
      return await SharedPreferences.getInstance();
    });
    await Get.putAsync<FlutterSecureStorage>(() async {
      return FlutterSecureStorage();
    });
    await Get.putAsync<GetStorage>(() async {
      return GetStorage(StorageName.STORAGE_NAME);
    });
  }

  static Future<void> initHive() async {
    Directory dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
    // HiveAdapters().registerAdapter();
    // await Hive.openBox<User>(HiveConstants.USERS_BOX);
    // await Hive.openBox<Place>(HiveConstants.PLACES);
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
