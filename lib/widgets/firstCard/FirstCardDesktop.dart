import 'package:demo/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstPageDesktop extends StatelessWidget {
  const FirstPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      // تحديد محاذاة النص حسب نوع الجهاز
      var textAlign = sizingInformation.deviceScreenType == DeviceScreenType.Desktop
          ? TextAlign.center
          : TextAlign.center;

      // حجم العنوان الرئيسي
      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 40
          : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
              ? 55
              : 70;

      // حجم النص الوصف
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 16
          : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
              ? 22
              : 30;

      // عرض الأزرار
      double buttonWidth = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 200
          : 330;
      double buttonHeight = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 50
          : 83;

      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            // العنوان الرئيسي
            Text(
              'Arabic Customer Copilot for Your Business',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
              ),
              textAlign: textAlign,
            ),
            const SizedBox(height: 20),

            // النص الوصف
            Text(
              'AiAnces creates intelligent, company-tailored chatbots '
              'that transform \n customer support.',
              style: TextStyle(
                fontSize: descriptionSize,
                color: Colors.white.withOpacity(0.9),
              ),
              textAlign: textAlign,
            ),
            const SizedBox(height: 40),

            // الأزرار
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Get our services -->',
                  onPressed: () => print('Get our services tapped!'),
                  backgroundColor: const Color(0xFFE0E0E0),
                  foregroundColor: const Color(0xFF2A1B4D),
                  width: buttonWidth,
                  height: buttonHeight,
                  borderRadius: 10,
                ),
                if (sizingInformation.deviceScreenType != DeviceScreenType.Mobile)
                  const SizedBox(width: 120),
                CustomButton(
                  text: 'Apps we integrated with',
                  onPressed: () => print('Apps we integrated with tapped!'),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  borderColor: Colors.white,
                  elevation: 0,
                  width: buttonWidth,
                  height: buttonHeight,
                  borderRadius: 12,
                ),
              ],
            ),
            const SizedBox(height: 50),

            // الصورة
            SizedBox(
              height: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                  ? 200
                  : sizingInformation.deviceScreenType == DeviceScreenType.Tablet
                      ? 300
                      : 350,
              child: Image.asset(
                'firstpagephoto.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      );
    });
  }
}
