import 'package:flutter/cupertino.dart';

class KeyboardHelper {
  static dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}