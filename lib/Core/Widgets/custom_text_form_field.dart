import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});
  final String hintText; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textAlign: TextAlign.right, // لمحاذاة النص داخل الحقل لليمين
      // textDirection: TextDirection.rtl, // لضبط اتجاه الكتابة من اليمين لليسار
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.bold14.copyWith(color: Colors.grey[500]),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
       
        enabledBorder: defaultBorder,
      
        focusedBorder: defaultBorder
      ),
      keyboardType: TextInputType.emailAddress, // لفتح كيبورد الإيميل مباشرة
    );
  }
}
final OutlineInputBorder defaultBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
);