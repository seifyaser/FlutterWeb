import 'package:demo/widgets/SecondCard/SecondCardDesktop.dart';
import 'package:demo/widgets/SecondCard/SecondCardMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Thirdcard extends StatelessWidget {
  const Thirdcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset('assets/our-team.png'),
    );
  }
}