import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:alex_final_project/features/onboarding/presentation/ui_model/onboarding_ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.pageIndex});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
            OnboardingUiConstants.onboardingPages[pageIndex].image),
        const SizedBox(height: 16),
        Text(
          OnboardingUiConstants.onboardingPages[pageIndex].title,
          style: AppTextStyles.darkGrey12Color24Bold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          OnboardingUiConstants.onboardingPages[pageIndex].description,
          style: AppTextStyles.greyA6Color16Regular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
