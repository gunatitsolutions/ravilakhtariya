import 'dart:async' show Future;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

enum PrefConstants {
  customTheme,
  appSettings,
  vibrate,
  darkMode,
  databasePath,
  showIntro,
  language,
  textToSpeech,
  textToSpeechLanguage,
  lastUpdatePrompt,
  enableMusic,
  isLogged,
  accessToken,
  myUser,
  firebaseToken,
  deviceId,
}

class SharedPrefs {
  SharedPrefs._();

  SharedPreferences? prefs;

  Future<void> initialize() async =>
      prefs = await SharedPreferences.getInstance();

  static final SharedPrefs instance = SharedPrefs._();

  dynamic read({required PrefConstants key}) => prefs?.get(key.name);

  int? readInt({required PrefConstants key}) => prefs?.getInt(key.name);

  String? readString({required PrefConstants key}) =>
      prefs?.getString(key.name);

  bool? readBool({required PrefConstants key}) => prefs?.getBool(key.name);

  Future<bool?> writeValue(PrefConstants key, dynamic value) async {
    if (value != null) {
      switch (value.runtimeType) {
        case bool:
          return prefs?.setBool(key.name, value as bool);
        case String:
          return prefs?.setString(key.name, value as String);
        case int:
          return prefs?.setInt(key.name, value as int);
        case double:
          return prefs?.setDouble(key.name, value as double);
        case Map:
          return prefs?.setString(key.name, json.encode(value as Map));
      }
    }
    return null;
  }

  Map<String, dynamic>? readMap(PrefConstants key) {
    final value = prefs?.getString(key.name);
    return json.decode(value ?? '');
  }

  Future<bool?> clearAll() async => prefs?.clear();

  Future<DateTime> getLastUpdatePromptTIme() async => prefs
              ?.containsKey(PrefConstants.lastUpdatePrompt.name) ??
          false
      ? DateTime.parse(prefs!.getString(PrefConstants.lastUpdatePrompt.name)!)
      : DateTime.now();

  Future<bool?> remove(PrefConstants key) async {
    if (prefs?.containsKey(key.name) ?? false) {
      return prefs?.remove(key.name);
    }
    return null;
  }

  bool containsKey({required PrefConstants key}) =>
      prefs?.containsKey(key.name) ?? false;
}
