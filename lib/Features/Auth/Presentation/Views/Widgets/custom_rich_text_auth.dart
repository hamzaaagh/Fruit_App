import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_colors.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomRichTextAuth extends StatelessWidget {
  const CustomRichTextAuth({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1, text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppStyles.semiBold16,
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey[600],
            ), // اللون الرمادي للنص العادي
          ),
          TextSpan(
            text: text2,
            style: AppStyles.semiBold16.copyWith(
              color: AppColors.primarycolor,
              fontFamily: "Cairo",
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                onTap?.call();
              },
          ),
        ],
      ),
    );
  }
}
