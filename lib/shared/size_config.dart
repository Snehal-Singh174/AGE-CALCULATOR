import 'package:flutter/widgets.dart';

class SizeConfig {
  MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 410;
    blockSizeVertical = screenHeight / 820;

    _safeAreaHorizontal =
        _mediaQueryData.padding.right + _mediaQueryData.padding.left;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 410;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 820;
  }
}
