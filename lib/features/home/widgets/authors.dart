import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Authors extends StatelessWidget {
  const Authors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 183.h,
      child: ListView.separated(scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp',
              ),
            ),
            Text('Text',style: AppTextStyles.darkGrey12Color14Medium.copyWith(fontSize: 16.sp),),
            Text('App',style: AppTextStyles.greyA6Color16Regular,)
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        itemCount: 5,
      ),
    );
  }
}
