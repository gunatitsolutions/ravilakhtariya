import 'package:flutter/services.dart';

class InputUtils {
  static TextInputFormatter lengthFormatter(int length) =>
      LengthLimitingTextInputFormatter(length);

  static TextInputFormatter decimalFormatter() =>
      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

  static TextInputFormatter percentageFormatter() {
    return TextInputFormatter.withFunction((oldValue, newValue) {
      final percentage = (num.tryParse(newValue.text) ?? 0);
      if (newValue.text.isNotEmpty && (percentage > 100 || percentage <= 0)) {
        return oldValue;
      }
      return newValue;
    });
  }

  static String trimLastCharacter(String text) {
    return text.replaceFirst(RegExp(r'\s+$'), '');
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
