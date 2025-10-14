import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppButtonStyles {
  AppButtonStyles._();

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: AppColors.primaryColor,
    foregroundColor: AppColors.whiteColor,
    fixedSize: Size(double.maxFinite, kToolbarHeight),
    minimumSize: Size(double.maxFinite, kToolbarHeight),
    maximumSize: Size(double.maxFinite, kToolbarHeight),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: AppColors.lightPurpleFAColor,
    foregroundColor: AppColors.primaryColor,
    fixedSize: Size(double.maxFinite, kToolbarHeight),
    minimumSize: Size(double.maxFinite, kToolbarHeight),
    maximumSize: Size(double.maxFinite, kToolbarHeight),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
