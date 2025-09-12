
import 'package:demo/widgets/LastCard/contactUSmobile.dart';
import 'package:demo/widgets/LastCard/contactusDesktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => ContactUsMobile(),
      desktop: (context) => ContactUsDesktop(),
    );
  }
}