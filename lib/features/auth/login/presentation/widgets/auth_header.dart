import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.darkGrey12Color24Bold),
        SizedBox(height: 8),
        Text(subtitle, style: AppTextStyles.greyA6Color16Regular),

      ],
    );
  }
}
