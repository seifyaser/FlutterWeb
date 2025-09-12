import 'package:demo/widgets/SecondCard/CustomNumberContainer.dart';
import 'package:demo/widgets/SecondCard/PhotoTextRow.dart';
import 'package:demo/widgets/SecondCard/TextPlaceholder.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SecondcardDesktop extends StatelessWidget {
  const SecondcardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // تحديد محاذاة النص حسب نوع الجهاز
        var textAlign =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
            ? TextAlign.center
            : TextAlign.center;

        // حجم العنوان الرئيسي
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 12
            : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
            ? 15
            : 32;

        // حجم النص الوصف 
       double PlaceholderSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 12
            : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
            ? 40
            : 50;
        // حجم النص الوصف
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 14
            : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
            ? 16
            : 19;

        // حجم نص الارقام لصف containers
        double NumberSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 25
            : 50;
double textSize =  sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 16
            : 22;

       
        return Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Textplaceholder(
                titleSize: titleSize,
                descriptionSize: descriptionSize,
                textAlign: textAlign,
              ),

              SizedBox(height: 50,),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [Customnumbercontainer(
                number: 54,
                 FirstTitle: 'Increased Efficiency',
                  SecondTitle: 'Automation empowers agents to resolve issues faster',
                   numberSize: NumberSize, textSize: textSize,
                  ),

              Customnumbercontainer(
                number: 73,
                 FirstTitle: 'Faster Response Time',
                  SecondTitle: 'Ai chat &voice agents reduce wait times across all support channels',
                   numberSize: NumberSize, textSize: textSize,
                  ),

              Customnumbercontainer(
                number: 99.8,
                 FirstTitle: 'Uptime Reliability',
                  SecondTitle: 'Machine learning ensures consistent, reliable outcomes for businesses',
                  numberSize: NumberSize, textSize: textSize,
                  ),]   
               ),
               SizedBox(height: 200),
             Text('Arabic Customer Service Chatbot',style: TextStyle(fontSize: PlaceholderSize,color: Colors.white,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 11 ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:  [
    PhotoTextRow(
      text: 'Company-specific training.',
      iconPath: "assets/flash-dynamic-gradient.webp",
       PlaceholderSize: PlaceholderSize,
       photoIConSize: 70,
    ),
    SizedBox(height: 20),
     PhotoTextRow(
      text: '24/7 Automated Support.',
      iconPath: "assets/chat-text-dynamic-gradient.webp",
     PlaceholderSize: PlaceholderSize,
     photoIConSize: 70,
    ),
    SizedBox(height: 20),
     PhotoTextRow(
      text: 'Scalable and Secure.',
      iconPath: "assets/sheild-dynamic-gradient.webp",
     PlaceholderSize: PlaceholderSize,
     photoIConSize: 70,
    ),
  ],
),

                  SizedBox(
                    width: 400,
                    child: Image.asset('assets/Rectanglemobilepic.webp')),
                 
                ],
               ),
             )
            ],
          ),
        );
      },
    );
  }
}
