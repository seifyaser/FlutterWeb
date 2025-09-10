import 'package:demo/widgets/LastCard/buildContactForm.dart';
import 'package:demo/widgets/LastCard/buildHeader.dart';
import 'package:demo/widgets/LastCard/buildInfoSection.dart';
import 'package:flutter/material.dart';

class ContactUsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color textColor = Colors.white;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildHeader(textColor, 24, 14),
          const SizedBox(height: 20),
          buildContactForm(textColor, 14),
          const SizedBox(height: 30),
          buildInfoSection(textColor, 16),
        ],
      ),
    );
  }
}