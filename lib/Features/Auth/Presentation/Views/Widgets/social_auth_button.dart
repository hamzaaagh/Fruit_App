import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({super.key, required this.title, required this.image});
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!), // الإطار الخارجي
        borderRadius: BorderRadius.circular(30), // حواف دائرية (Stadium)
        color: Colors.white,
      ),
      child: ListTile(
        onTap: () {
          // Logic هنا
        },
        // استخدام trailing أو leading يعتمد على رغبتك في مكان الأيقونة
        trailing: Image.asset(image, height: 24),
        title: Text(
          title,
          textAlign: TextAlign.center, // لتوسط النص في المساحة المتبقية
          style: AppStyles.semiBold16.copyWith(color: Colors.black87),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20), // مسافات داخلية
        visualDensity:
            VisualDensity.compact, // لتقليل ارتفاع الـ ListTile ليناسب شكل الزر
      ),
    );
  }
}
