import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoTextRow extends StatelessWidget {
  final String text;
  final String iconPath;
 final  double PlaceholderSize;
 final double photoIConSize;
 

  const PhotoTextRow({
    super.key,
    required this.text,
    required this.iconPath,  this.PlaceholderSize = 18, this.photoIConSize =30,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          iconPath,
          // width: 24,
           height: photoIConSize,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: GoogleFonts.jaldi(
            fontSize: PlaceholderSize,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
