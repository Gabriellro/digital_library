import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const black50 = Color(0x80000000);
  static const black30 = Color(0x4D000000);
  static const softwhite = Color(0xFFF8F6F7);
}

abstract class LightColors {
  static const background = AppColors.softwhite;
  static const card = AppColors.white;
  static const textLigth = AppColors.primary;
  static const iconLight = AppColors.primary;
}

abstract class DarkColors {
  static const background = AppColors.primary;
  static const card = AppColors.black50;
  static const textDark = AppColors.white;
  static const iconDark = AppColors.white;
}
