import 'package:flutter/widgets.dart';

class AppSize {
  static const double xSmall = 4;
  static const double small = 8;
  static const double medium = 12;
  static const double mediumLarge = 16;
  static const double large = 20;
  static const double xLarge = 24;
  static const double xxLarge = 32;
  static const double xxxLarge = 64;
  static const double padding = 25;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

class VSpace {
  static const Widget veryTiny = SizedBox(height: AppSize.xSmall);
  static const Widget tiny = SizedBox(height: AppSize.small);
  static const Widget small = SizedBox(height: AppSize.medium);
  static const Widget medium = SizedBox(height: AppSize.mediumLarge);
  static const Widget large = SizedBox(height: AppSize.xxLarge);
  static const Widget xLarge = SizedBox(height: 42);
  static const Widget massive = SizedBox(height: AppSize.xxxLarge);
}

class HSpace {
  static const Widget veryTiny = SizedBox(width: AppSize.xSmall);
  static const Widget tiny = SizedBox(width: AppSize.small);
  static const Widget small = SizedBox(width: AppSize.medium);
  static const Widget medium = SizedBox(width: AppSize.mediumLarge);
  static const Widget large = SizedBox(width: AppSize.xxLarge);
  static const Widget massive = SizedBox(width: AppSize.xxxLarge);
}
