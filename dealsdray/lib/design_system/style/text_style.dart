import 'package:dealsdray/design_system/font/brand_font.dart';
import 'package:dealsdray/src/theme/colors.dart';
import 'package:flutter/material.dart';

class BrandTextStyle extends TextStyle {
  static const brandTextStyle1 = TextStyle(
    fontSize: BrandFontSize.heeadline1,
    color: AppColor.black,
    fontWeight: FontWeight.w400,
  );
  static const brandTextStyle2 = TextStyle(
    fontSize: BrandFontSize.body,
    color: AppColor.black,
    fontWeight: FontWeight.w400,
  );
  @override
  // ignore: overridden_fields
  final Color? color;
  @override
  // ignore: overridden_fields
  final double? fontSize;
  @override
  // ignore: overridden_fields
  final FontWeight? fontWeight;
  const BrandTextStyle({
    this.color,
    this.fontSize,
    this.fontWeight,
  });
}
