import 'package:flutter/material.dart';
import 'package:qanony/core/utils/colors.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: "Noor",
    useMaterial3: false,
    sliderTheme: const SliderThemeData(
        thumbColor: AppColor.borderColor, overlayColor: AppColor.textColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.whiteColor,
    ),
  );
}
