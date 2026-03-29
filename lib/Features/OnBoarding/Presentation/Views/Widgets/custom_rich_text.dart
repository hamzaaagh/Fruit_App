import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
        style: TextStyle(fontSize: 18, color: Colors.black),
        children: [
          TextSpan(
            text: 'مرحباً بك في ',
            style: AppStyles.bold24.copyWith(fontFamily: 'Cairo'),
          ),
          TextSpan(
            text: 'Fruit',
            style: TextStyle(
              color: Color(0xff1B5E37),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'HUB',
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
