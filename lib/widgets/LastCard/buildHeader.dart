import 'package:flutter/material.dart';

Widget buildHeader(Color textColor, double titleSize, double subtitleSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Get in touch with us',
        style: TextStyle(
          color: textColor,
          fontSize: titleSize,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 16),
      Text(
        'Fill out the form below or schedule a meeting with us at your convenience',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: subtitleSize,
        ),
      ),
    ],
  );
}