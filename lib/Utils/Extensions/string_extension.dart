import 'package:flutter/services.dart';

extension StringExtension on String {
  String lowerCaseFirstLatter() {
    return '${this[0].toLowerCase()}${substring(1)}';
  }
  String padding(int width, [String padding = ' ']) =>
      padLeft(width, padding).padRight(width, padding);

  bool get isMail => RegExp(r'^(\w|[.])+@(\w+[.])+\w+$').hasMatch(this);

  void copyToClipboard() => Clipboard.setData(
    ClipboardData(text: this),
  );
}

extension ParseNumbers on String {
  int parseInt() {
    return int.parse(this);
  }
  double? parseDouble() {
    return double.tryParse(this);
  }
}

extension PriceFormat on String {
  String getPriceFormat() {
    return replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
