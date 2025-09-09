import 'package:demo/widgets/NavigationBar/NavBarLogo.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {

  final VoidCallback onMenuPressed;


  const NavigationBarMobile({Key? key, required this.onMenuPressed})
      : super(key: key);

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