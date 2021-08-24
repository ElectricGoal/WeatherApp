import 'package:flutter/material.dart';
import 'package:weather_app/provider/navigation_provider.dart';

///Use in [NavigationProvider].
class MenuItem {
  IconData? icon;
  String? label;
  Widget? navigation;
  bool enableDelete;
  
  MenuItem({
    required this.icon,
    required this.label,
    required this.navigation,
    this.enableDelete = true,
  });
}
