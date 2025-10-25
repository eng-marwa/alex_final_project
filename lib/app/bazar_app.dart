import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:alex_final_project/core/resources/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BazarApp extends StatelessWidget {
  const BazarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: AppColors.whiteColor,
        ),
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
