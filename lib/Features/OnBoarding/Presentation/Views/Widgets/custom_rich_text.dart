import 'package:flutter/material.dart';

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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
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