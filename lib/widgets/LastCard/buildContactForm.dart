import 'package:flutter/material.dart';

Widget buildContactForm(Color textColor, double fontSize) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTextField('NAME', 'Your name', fontSize),
      const SizedBox(height: 20),
      buildTextField('EMAIL', 'Enter your email', fontSize),
      const SizedBox(height: 20),
      buildTextField('MESSAGE', 'Enter your message', fontSize, maxLines: 4),
      const SizedBox(height: 20),
      buildTermsCheckbox(fontSize),
      const SizedBox(height: 30),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'Send Your Request',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}


Widget buildTextField(String label, String hint, double fontSize,
    {int maxLines = 1}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(color: Colors.grey[400], fontSize: 12),
      ),
      const SizedBox(height: 8),
      TextFormField(
        maxLines: maxLines,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[600]),
          filled: true,
          fillColor: const Color(0xFF2B2B38),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey[700]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

Widget buildTermsCheckbox(double fontSize) {
  return Row(
    children: [
      Checkbox(
        value: false,
        onChanged: (bool? value) {},
        checkColor: Colors.black,
        activeColor: Colors.white,
        side: BorderSide(color: Colors.grey[600]!),
      ),
      Text(
        'I agree with Terms and Conditions',
        style: TextStyle(color: Colors.grey[400], fontSize: fontSize),
      ),
    ],
  );
}