import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItem {
  final String label;
  final String icon;
  final Widget route;

  NavItem(this.label, this.icon, this.route);
}
