import 'package:alex_final_project/core/app_ui_constants/app_ui_constants.dart';
import 'package:alex_final_project/features/home/widgets/home_app_bar.dart';
import 'package:alex_final_project/features/main/widgets/main_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: AppUiConstants.items[_selectedIndex].route,
      bottomNavigationBar: MainBottomNavBar(currentIndex: _selectedIndex,
        onPageSelected: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
