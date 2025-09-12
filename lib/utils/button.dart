import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color? borderColor;
  final double elevation;
  final double width;
  final double height;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.grey,
    this.foregroundColor = Colors.black,
    this.borderColor,
    this.elevation = 5,
    this.width = 200,
    this.height = 60,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        elevation: elevation,
        fixedSize: Size(width, height),
        side: borderColor != null ? BorderSide(color: borderColor!, width: 2) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      child: FittedBox(
  fit: BoxFit.scaleDown,
  child: Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20, 
      color: foregroundColor,
    ),
  ),
)

    );
  }
}



class TryButton extends StatelessWidget {
  final String text;
  const TryButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {

      },


      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black, 
        elevation: 5,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
      ),
      
      child:  Text(
        text,
        style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}