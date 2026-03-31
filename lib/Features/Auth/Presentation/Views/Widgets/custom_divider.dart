import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // الخط الأيمن
        Expanded(child: Divider(color: Colors.grey[300], thickness: 1)),
        // النص في المنتصف
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'أو', // النص الظاهر في الصورة
            style: AppStyles.semiBold16.copyWith(
              color: Colors.grey[600],
            ),
          ),
        ),
        // الخط الأيسر
        Expanded(child: Divider(color: Colors.grey[300], thickness: 1)),
      ],
    );
  }
}