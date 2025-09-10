import 'package:demo/widgets/SecondCard/SecondCardDesktop.dart';
import 'package:demo/widgets/SecondCard/SecondCardMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Secondcard extends StatelessWidget {
  const Secondcard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context)=> SecondcardDesktop (),
      mobile: (context)=> SecondCardMobile(),
    );
  }
}