import 'package:demo/widgets/SecondCard/CustomNumberContainer.dart';
import 'package:demo/widgets/SecondCard/PhotoTextRow.dart';
import 'package:demo/widgets/SecondCard/TextPlaceholder.dart';
import 'package:flutter/material.dart';

class SecondCardMobile extends StatelessWidget {
  const SecondCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        Textplaceholder(titleSize: 20, descriptionSize: 14, textAlign: TextAlign.center,),
        SizedBox(height: 20,),
         Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Customnumbercontainer(
                number: 54,
                 FirstTitle: 'Increased Efficiency',
                  SecondTitle: 'Automation empowers agents to resolve issues faster',
                   numberSize: 22, textSize: 14,
                  ),
    SizedBox(height: 20,),
              Customnumbercontainer(
                number: 73,
                 FirstTitle: 'Faster Response Time',
                  SecondTitle: 'Ai chat &voice agents reduce wait times across all support channels',
                  numberSize: 22, textSize: 14,
                  ),
SizedBox(height: 20,),
              Customnumbercontainer(
                number: 99.8,
                 FirstTitle: 'Uptime Reliability',
                  SecondTitle: 'Machine learning ensures consistent, reliable outcomes for businesses',
                   numberSize: 22, textSize: 14,
                  ),]   
               ),
                SizedBox(height: 50,),


   Text('Arabic Customer Service Chatbot',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),

SizedBox(height: 35,),

             Padding(
               padding: const EdgeInsets.only(left: 20, right: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:  [
                   PhotoTextRow(
                     text: 'Company-specific training.',
                     iconPath: "assets/flash-dynamic-gradient.png",
                     
                   ),
                   SizedBox(height: 20),
                    PhotoTextRow(
                     text: '24/7 Automated Support.',
                     iconPath: "assets/chat-text-dynamic-gradient.png",
                  
                   ),
                   SizedBox(height: 20),
                    PhotoTextRow(
                     text: 'Scalable and Secure.',
                     iconPath: "assets/sheild-dynamic-gradient.png",
                    
                   ),
                 ],
               ),
               
                SizedBox(
                    width: 100,
                    child: Image.asset('assets/Rectanglemobilepic.png')),
                ],
               ),
             ),
      ],
    );
  }
}