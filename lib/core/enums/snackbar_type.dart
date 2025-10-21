import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

enum SnackBarType {
  success(color: AppColors.greenColor),
  error(color: AppColors.redColor),
  warning(color: AppColors.orangeColor),
  info(color: AppColors.blueColor);

  final Color color;

  const SnackBarType({required this.color});
}
