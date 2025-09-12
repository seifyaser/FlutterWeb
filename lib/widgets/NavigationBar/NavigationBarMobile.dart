import 'package:demo/widgets/NavigationBar/NavBarLogo.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  final VoidCallback onMenuPressed;
  final Function(String) onItemSelected;

  const NavigationBarMobile({
    super.key,
    required this.onMenuPressed,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: onMenuPressed,
            ),
            const NavBarLogo(),
          ],
        ),
      ),
    );
  }
}
