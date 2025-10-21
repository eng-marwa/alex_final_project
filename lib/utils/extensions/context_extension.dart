import 'package:alex_final_project/core/enums/snackbar_type.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void navigateTo(String routeName, {dynamic args}) {
    Navigator.pushNamed(this, routeName, arguments: args);
  }

  void navigateReplacement(String routeName, {dynamic args}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: args);
  }

  void showSnackBar(String message, {SnackBarType? type = SnackBarType.info}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message, style: AppTextStyles.whiteColor16Bold),
        backgroundColor: type?.color,
      ),
    );
  }
}
