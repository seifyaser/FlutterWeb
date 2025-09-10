import 'package:demo/utils/GradientText.dart';
import 'package:flutter/material.dart';

class Textplaceholder extends StatelessWidget {
  final double? titleSize;
  final double? descriptionSize;
  final TextAlign? textAlign;

  const Textplaceholder({
    super.key,
   this.titleSize,
   this.descriptionSize,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'KEY PERFORMANCE INDICATORS',
          textAlign: textAlign,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: const Color(0xffCFACF3),
            fontSize: descriptionSize, // ← خليها descriptionSize
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'We don’t just deploy AI —',
          textAlign: textAlign,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: const Color(0xffEBE4E7),
            fontSize: titleSize, // ← العنوان الأساسي
          ),
        ),
        const SizedBox(height: 20),
        FittedBox(
  fit: BoxFit.scaleDown, 
  child: GradientText(
    text: "We deliver measurable business outcomes.",
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: titleSize, 
    ),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF2196F3), // Blue
        Color(0xFF9C27B0), // Purple
        Color(0xFFF44336), // Red
      ],
      stops: [0.1, 0.5, 0.9],
    ),
  ),
)

      ],
    );
  }
}
