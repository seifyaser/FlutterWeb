import 'package:flutter/material.dart';

class FourthCard extends StatelessWidget {
  const FourthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.asset('assets/why.png'),
    );
  }
}