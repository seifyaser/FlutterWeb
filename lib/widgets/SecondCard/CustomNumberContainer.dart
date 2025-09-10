import 'package:flutter/material.dart';

class Customnumbercontainer extends StatelessWidget {
  final double number;
  final String? FirstTitle;
  final String? SecondTitle;
  final double? numberSize;
  final double? textSize;
  const Customnumbercontainer({super.key, required this.number,  this.FirstTitle,this.SecondTitle,  this.numberSize,this.textSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
           border: Border.all(
                color: const Color.fromARGB(184, 255, 255, 255), 
                width: 2, 
              ),
          color: const Color(0xFF33204D),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(72, 255, 255, 255).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Animated Counter
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: number), 
              duration: const Duration(seconds: 2),
              builder: (context, value, child) {
                return ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Colors.blue, Colors.purple, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    '+${value.toInt()}%', 
                    style:  TextStyle(
                      fontSize: numberSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              FirstTitle!, //'Increased Efficiency'
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFC7C7C7),
                fontSize: textSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
             Text(
              SecondTitle!,  // 'Automation empowers agents to resolve issues faster, boosting productivity'
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFA0A0A0),
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
