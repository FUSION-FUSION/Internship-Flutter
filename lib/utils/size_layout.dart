import 'package:flutter/material.dart';

class SizeLayout {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getScreenHeight(double inputHeight) {
  double screenHeight = SizeLayout.screenHeight;
  return (inputHeight / 926.0) * screenHeight;
}


double getScreenWidth(double inputWidth) {
  double screenWidth = SizeLayout.screenWidth;
  return (inputWidth / 428.0) * screenWidth;
}