import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestVendors extends StatelessWidget {
  const BestVendors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 80.h,
      child: ListView.separated(scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(alignment: Alignment.center,
          height: 80.h,
          width: 80.w,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          child: Text('data'),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
        itemCount: 5,
      ),
    );
  }
}
