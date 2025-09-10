import 'package:demo/widgets/firstCard/FirstCardDesktop.dart';
import 'package:demo/widgets/firstCard/FirstCardMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context)=> FirstPageDesktop (),
      mobile: (context)=> Firstpagemobile(),
    );
  }
}