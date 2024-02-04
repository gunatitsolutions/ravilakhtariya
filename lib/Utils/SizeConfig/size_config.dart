import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? safeAreaHorizontal;
  static double? safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;
  static double? topPadding;
  static String? screenSize;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;

    topPadding = _mediaQueryData?.padding.top;

    safeAreaHorizontal = (_mediaQueryData?.padding.left ?? 0) + (_mediaQueryData?.padding.right ?? 0);
    safeAreaVertical = (_mediaQueryData?.padding.top ?? 0) + (_mediaQueryData?.padding.bottom ?? 0);

    safeBlockHorizontal = ((screenWidth ?? 0) - (safeAreaHorizontal ?? 0)) / 100;
    safeBlockVertical = ((screenHeight ?? 0) - (safeAreaVertical ?? 0)) / 100;

    if((screenWidth ?? 0) >= 600){
      screenSize = 'tablet';
    }
    else if((screenWidth ?? 0) >= 400){
      screenSize = 'largeMobile';
    }
    else{
      screenSize = 'smallMobile';
    }
  }

}