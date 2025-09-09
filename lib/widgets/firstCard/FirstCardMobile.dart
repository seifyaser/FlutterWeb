import 'package:demo/widgets/button.dart';
import 'package:flutter/material.dart';

class Firstpagemobile extends StatelessWidget {
  const Firstpagemobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11 ),
      child: Column(
        children: [
         Text(
                'Arabic Customer Copilot for Your Business',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9),
                ),
                textAlign: TextAlign.center,
              ),
                          const SizedBox(height: 10),
      
             
              Text(
                'AiAnces creates intelligent, company-tailored chatbots '
                'that transform  customer support.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.9),
                ),
                textAlign: TextAlign.center,
              ),
                   const SizedBox(height: 10),
              Image.asset(
                  'firstpagephoto.png',
                  fit: BoxFit.contain,
                ),
 const SizedBox(height: 25),
                CustomButton(
                  text: 'Get our services -->',
                  onPressed: () => print('Get our services tapped!'),
                  backgroundColor: const Color(0xFFE0E0E0),
                  foregroundColor: const Color(0xFF2A1B4D),
                  width: 250,
                  height:50 ,
                  borderRadius: 10,
                ),
               
                  const SizedBox(height: 25),
                CustomButton(
                  text: 'Apps we integrated with',
                  onPressed: () => print('Apps we integrated with tapped!'),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  borderColor: Colors.white,
                  elevation: 0,
                  width: 250,
                  height:50 ,
                  borderRadius: 12,
                ),
        ],
      ),
    );
  }
}