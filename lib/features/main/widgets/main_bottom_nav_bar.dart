import 'package:alex_final_project/core/app_ui_constants/app_ui_constants.dart';
import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key, this.onPageSelected, this.currentIndex});
  final Function(int)? onPageSelected;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.lightGreyFAColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex ?? 0,
      onTap: onPageSelected,
      items: AppUiConstants.items
          .map(
            (e) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                e.icon,
                color: currentIndex == AppUiConstants.items.indexOf(e)
                    ? AppColors.primaryColor
                    : AppColors.greyA6Color,
              ),
              label: e.label,
            ),
          )
          .toList(),
    );
  }
}
