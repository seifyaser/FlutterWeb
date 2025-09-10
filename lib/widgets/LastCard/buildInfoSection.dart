import 'package:flutter/material.dart';

Widget buildInfoSection(Color textColor, double fontSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          'With our services you can',
          style: TextStyle(
            color: textColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 20),
      _buildServicePoint('Improve usability of your product', fontSize),
      _buildServicePoint(
          'Engage users at a higher level and outperform your competition', fontSize),
      _buildServicePoint('Reduce the onboarding time and improve sales', fontSize),
      _buildServicePoint('Balance user needs with your business goal', fontSize),
      const SizedBox(height: 40),
      Text(
        'You can also Contact Us via',
        style: TextStyle(
          color: textColor,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),
      _buildContactDetail(Icons.email, 'ContactAiAnces@gmail.com', fontSize),
      const SizedBox(height: 10),
      _buildContactDetail(Icons.phone, '+20 12345678', fontSize),
    ],
  );
}

Widget _buildServicePoint(String text, double fontSize) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.only(top: 4),
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.grey[400], fontSize: fontSize),
          ),
        ),
      ],
    ),
  );
}

Widget _buildContactDetail(IconData icon, String text, double fontSize) {
  return Row(
    children: [
      Icon(icon, color: Colors.grey[400], size: fontSize + 5),
      const SizedBox(width: 12),
      Text(
        text,
        style: TextStyle(color: Colors.grey[400], fontSize: fontSize),
      ),
    ],
  );
}