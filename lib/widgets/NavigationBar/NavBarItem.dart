import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
 
  const NavBarItem({ required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22,color: Colors.white),
    );
  }
}