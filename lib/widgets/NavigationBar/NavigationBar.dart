import 'package:demo/widgets/NavigationBar/NavigationBarDesktop.dart';
import 'package:demo/widgets/NavigationBar/NavigationBarMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback onMenuPressed;
  final Function(String) onItemSelected; // callback for item tap

  const CustomNavigationBar({
    Key? key,
    required this.onMenuPressed,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => NavigationBarMobile(
        onMenuPressed: onMenuPressed,
        onItemSelected: onItemSelected,
      ),
      desktop: (context) => NavigationBarDesktop(onItemSelected: onItemSelected),
    );
  }
}
