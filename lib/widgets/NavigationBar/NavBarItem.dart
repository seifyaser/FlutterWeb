import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final Function(String)? onTap;

  const NavBarItem({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {  onTap?.call(title); },
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}
