import 'package:alex_final_project/core/resources/app_icons.dart';
import 'package:alex_final_project/features/onboarding/presentation/ui_model/page_item.dart';

class OnboardingUiConstants {
  OnboardingUiConstants._();

  static final List<PageItem> onboardingPages = [
    PageItem(
      title: 'Now reading books will be easier',
      description:
          'Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
      image: AppIcons.onboarding1,
    ),
    PageItem(
      title: 'Your Bookish Soulmate Awaits',
      description:
          'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
      image: AppIcons.onboarding2,
    ),
    PageItem(
      title: ' Embark on Your Reading Journey Today',
      description:
          'Dive into a world of stories, knowledge, and adventure. Start your reading journey with us now!',
      image: AppIcons.onboarding3,
    ),
  ];
}
