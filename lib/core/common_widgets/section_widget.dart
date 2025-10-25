import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.title,
    required this.isSeeAll,
    this.icon,
  });

  final String title;
  final bool isSeeAll;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.darkGrey12Color24Bold.copyWith(fontSize: 20)),
        if (isSeeAll)
          Text('See All', style: AppTextStyles.primaryColor16Bold)
        else
          Icon(icon),
      ],
    );
  }
}
