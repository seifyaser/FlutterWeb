import 'package:flutter/material.dart';

class Thirdcard extends StatelessWidget {
  const Thirdcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset('assets/our-team.webp'),
    );
  }
}