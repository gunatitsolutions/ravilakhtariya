import 'dart:async' show Future;
import 'dart:convert';
import 'package:get_storage/get_storage.dart';

class SharedPrefs {

  static Future<void> writeValue(String key, dynamic value) async {
    await GetStorage().write(key, value);
  }

  static T read<T>(String key) {
    return GetStorage().read(key);
  }

  static String readStringValue(String key) {
    return GetStorage().read(key) ?? '';
  }

  static bool readBoolValue(String key) {
    return GetStorage().read(key) ?? false;
  }

  static Future<void> clearAll() async {
    return await GetStorage().erase();
  }

  static Future<void> remove(String key) async {
    return await GetStorage().remove(key);
  }

  static Future<void> writeMap(String key, dynamic value) async {
    await GetStorage().write(key, jsonEncode(value));
  }
}


