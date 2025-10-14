import 'package:alex_final_project/core/common_widgets/primary_button.dart';
import 'package:alex_final_project/core/common_widgets/secondary_button.dart';
import 'package:alex_final_project/core/resources/app_router.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:alex_final_project/features/onboarding/presentation/ui_model/onboarding_ui_constants.dart';
import 'package:alex_final_project/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:alex_final_project/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Column(
            children: [
              pageIndex < OnboardingUiConstants.onboardingPages.length - 1
                  ? Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: GestureDetector(
                        onTap: () => context.navigateReplacement(Routes.home),
                        child: Text(
                          'Skip',
                          style: AppTextStyles.primaryColor16Medium,
                        ),
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: 16),
              Flexible(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                  itemCount: OnboardingUiConstants.onboardingPages.length,
                  itemBuilder: (context, index) =>
                      OnboardingItem(pageIndex: pageIndex),
                ),
              ),
              SizedBox(height: 32),
              Container(width: 90, height: 10, color: Colors.purple),
              SizedBox(height: 32),
              PrimaryButton(
                onPrimaryButtonPressed: () {},
                buttonLabel:
                    pageIndex < OnboardingUiConstants.onboardingPages.length - 1
                    ? 'Continue'
                    : 'Get Started',
              ),
              SizedBox(height: 8),
              SecondaryButton(
                onPrimaryButtonPressed: () {},
                buttonLabel: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
