import 'package:alex_final_project/core/resources/app_button_styles.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPrimaryButtonPressed,
    required this.buttonLabel,
  });

  final VoidCallback onPrimaryButtonPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPrimaryButtonPressed,
      style: AppButtonStyles.primaryButtonStyle,
      child: Text(buttonLabel, style: AppTextStyles.whiteColor16Bold),
    );
  }
}
