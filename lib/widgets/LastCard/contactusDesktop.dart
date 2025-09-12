import 'package:demo/widgets/LastCard/buildContactForm.dart';
import 'package:demo/widgets/LastCard/buildHeader.dart';
import 'package:demo/widgets/LastCard/buildInfoSection.dart';
import 'package:flutter/material.dart';

class ContactUsDesktop extends StatelessWidget {
  const ContactUsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    const Color textColor = Colors.white;

    return Column(
    //  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: buildHeader(textColor, 36, 16)),
        const SizedBox(height: 40),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 50),
         child: Row(
           children: [
             Expanded(flex: 2, child: buildContactForm(textColor, 16)),
             Spacer(flex: 1),
             Expanded(flex: 2, child: buildInfoSection(textColor, 17)),
           ],
         ),
       ),
SizedBox(height: 40),
      ],
    );
  }
}