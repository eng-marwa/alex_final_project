import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void navigateTo(String routeName, {dynamic args}) {
    Navigator.pushNamed(this, routeName, arguments: args);
  }

  void navigateReplacement(String routeName, {dynamic args}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: args);
  }
}
