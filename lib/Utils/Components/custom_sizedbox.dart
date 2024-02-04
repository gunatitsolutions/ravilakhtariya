import 'package:flutter/cupertino.dart';

Widget customSizedBox(double size, {bool widthHeight = false}) {
  return widthHeight == true
      ? SizedBox(
          width: size,
        )
      : SizedBox(
          height: size,
        );
}
