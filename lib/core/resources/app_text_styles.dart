import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String _fontFamily = 'Roboto';
  static const String _secondaryFamily = 'OpenSans';

  static final TextStyle primaryColor16Medium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

  static final TextStyle whiteColor16Bold = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

  static final TextStyle primaryColor16Bold = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static final TextStyle darkGrey12Color24Bold = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGrey12Color,
  );

  static final TextStyle greyA6Color16Regular = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.greyA6Color,
  );
}
