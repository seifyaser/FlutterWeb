import 'package:demo/widgets/button.dart';
import 'package:demo/widgets/NavigationBar/NavBarItem.dart';
import 'package:demo/widgets/NavigationBar/NavBarLogo.dart';
import 'package:flutter/material.dart';

class Navigationbardesktop extends StatelessWidget {
  const Navigationbardesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        NavBarLogo(),
        Row(
         mainAxisSize: MainAxisSize.min,
              children:[
                NavBarItem(title: 'Home'),
                SizedBox(width: 40),
                NavBarItem(title: 'Details'),
                SizedBox(width: 40),
                NavBarItem(title: 'Our Team'),
                SizedBox(width: 40),
                NavBarItem(title: 'Contact Us'),
              ],
            ),
        TryButton(text: 'Try Model')
      ]),
    );
  }
}