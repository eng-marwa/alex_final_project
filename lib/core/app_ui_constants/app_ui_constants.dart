import 'package:alex_final_project/core/resources/app_icons.dart';
import 'package:alex_final_project/core/resources/app_router.dart';
import 'package:alex_final_project/features/cart/cart_screen.dart';
import 'package:alex_final_project/features/categories/category_screen.dart';
import 'package:alex_final_project/features/home/home_screen.dart';
import 'package:alex_final_project/features/main/ui_model/nav_item.dart';
import 'package:alex_final_project/features/profile/profile_screen.dart';

class AppUiConstants {
  AppUiConstants._();

  static final List<NavItem> items = [
    NavItem('Home', AppIcons.homeIcon, HomeScreen()),
    NavItem('Category', AppIcons.categoryIcon, CategoryScreen()),
    NavItem('Cart', AppIcons.cartIcon, CartScreen()),
    NavItem('Profile', AppIcons.profileIcon, ProfileScreen()),
  ];
}
