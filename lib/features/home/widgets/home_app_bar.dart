import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:alex_final_project/core/resources/app_icons.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: AppColors.whiteColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppIcons.searchIcon),
          Text(
            'Home',
            style: AppTextStyles.darkGrey12Color24Bold.copyWith(fontSize: 20.sp),
          ),
          Stack(
            children: [
              SvgPicture.asset(AppIcons.notificationsIcon),
              Positioned(left:16,child: SvgPicture.asset(AppIcons.badgeIcon)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
