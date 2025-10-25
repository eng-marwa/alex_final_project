import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key, this.products});

  final List? products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,width: 127.w,
              decoration: BoxDecoration(color: AppColors.darkGrey12Color,
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp',
                  ),
                ),
              ),
            ),
            Text('Product Name', style: AppTextStyles.darkGrey12Color14Medium),
            Text(
              '\$ 140',
              style: AppTextStyles.primaryColor16Medium.copyWith(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        itemCount: 5,
      ),
    );
  }
}
