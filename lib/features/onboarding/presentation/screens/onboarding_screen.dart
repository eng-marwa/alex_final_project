import 'package:alex_final_project/core/common_widgets/primary_button.dart';
import 'package:alex_final_project/core/common_widgets/secondary_button.dart';
import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:alex_final_project/core/resources/app_router.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:alex_final_project/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:alex_final_project/features/onboarding/presentation/ui_model/onboarding_ui_constants.dart';
import 'package:alex_final_project/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:alex_final_project/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    context.read<OnboardingCubit>().setFirstTime();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                        onTap: () => context.navigateReplacement(Routes.main),
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
                  controller: _pageController,
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
              SizedBox(
                height: 16,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    OnboardingUiConstants.onboardingPages.length,
                    (index) => AnimatedContainer(
                      width: pageIndex == index ? 16 : 8,
                      height: pageIndex == index ? 16 : 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: pageIndex == index
                            ? AppColors.primaryColor
                            : AppColors.greyE8Color,
                      ),
                      margin: EdgeInsetsDirectional.only(end: 4.0),
                      duration: Duration(seconds: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              PrimaryButton(
                onPrimaryButtonPressed: () {
                  if (pageIndex <
                      OnboardingUiConstants.onboardingPages.length - 1) {
                    _pageController.animateToPage(
                      pageIndex + 1,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeIn,
                    );
                  }else{
                    context.navigateReplacement(Routes.main);
                  }
                },
                buttonLabel:
                    pageIndex < OnboardingUiConstants.onboardingPages.length - 1
                    ? 'Continue'
                    : 'Get Started',
              ),
              SizedBox(height: 8),
              SecondaryButton(
                onPrimaryButtonPressed: () {
                  context.navigateReplacement(Routes.login);
                },
                buttonLabel: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
