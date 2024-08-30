import 'package:dealsdray/design_system/font/brand_font.dart';
import 'package:dealsdray/src/theme/colors.dart';
import 'package:flutter/material.dart';

class BrandText extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  final String? fontFamily;
  final double? fontSize;
  const BrandText({
    super.key,
    required this.data,
    this.textStyle,
    this.fontFamily,
    this.fontSize,
  });
  const BrandText.primary({
    super.key,
    required this.data,
    this.fontFamily,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle1,
      color: AppColor.primary,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),
  });
  const BrandText.secondary({
    super.key,
    required this.data,
    this.fontFamily,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle2,
      color: AppColor.black,
      fontFamily: 'Poppins',
    ),
  });
  const BrandText.grey({
    super.key,
    this.fontFamily,
    required this.data,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle2,
      color: AppColor.greyDC,
      fontFamily: 'Poppins',
    ),
  });
  const BrandText.white({
    super.key,
    required this.data,
    this.fontFamily,
    this.fontSize,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.subtitle2,
      color: AppColor.white,
      fontFamily: 'Poppins',
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: textStyle?.copyWith(
            fontFamily: 'Poppins',
            fontSize: fontSize,
          ) ??
          textStyle,
    );
  }
}
