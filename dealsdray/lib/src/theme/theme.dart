import 'package:dealsdray/src/theme/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static lightTheme() {
    ThemeData(
      primaryColor: AppColor.primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.primary,
      ),
    );
  }
}
