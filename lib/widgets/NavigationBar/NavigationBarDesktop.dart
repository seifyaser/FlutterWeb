import 'package:demo/utils/button.dart';
import 'package:demo/widgets/NavigationBar/NavBarItem.dart';
import 'package:demo/widgets/NavigationBar/NavBarLogo.dart';
import 'package:flutter/material.dart';

class NavigationBarDesktop extends StatelessWidget {
  final Function(String) onItemSelected;

  const NavigationBarDesktop({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Home', onTap: onItemSelected),
              const SizedBox(width: 40),
              NavBarItem(title: 'Details', onTap: onItemSelected),
              const SizedBox(width: 40),
              NavBarItem(title: 'Our Team', onTap: onItemSelected),
              const SizedBox(width: 40),
              NavBarItem(title: 'Contact Us', onTap: onItemSelected),
            ],
          ),
          TryButton(text: 'Try Model'),
        ],
      ),
    );
  }
}
