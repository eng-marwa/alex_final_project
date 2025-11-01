import 'package:alex_final_project/core/common_widgets/section_widget.dart';
import 'package:alex_final_project/features/home/widgets/authors.dart';
import 'package:alex_final_project/features/home/widgets/best_vendors.dart';
import 'package:alex_final_project/features/home/widgets/home_app_bar.dart';
import 'package:alex_final_project/features/home/widgets/products_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 162.h),
                SectionWidget(title: 'Top of the week', isSeeAll: true),
                SizedBox(height: 8.h),
                ProductsList(),
                SectionWidget(title: 'Best Vendors', isSeeAll: true),
                SizedBox(height: 8.h),
                BestVendors(),
                SectionWidget(title: 'Authors', isSeeAll: false),
                SizedBox(height: 8.h),
                Authors(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
