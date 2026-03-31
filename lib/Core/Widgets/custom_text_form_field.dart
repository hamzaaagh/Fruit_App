import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
  });
  final String hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: "*",
      style: AppStyles.semiBold16.copyWith(color: Color(0xFF0C0D0D)),
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: obscureText
            ? Padding(
                padding: const EdgeInsetsDirectional.only(end: 31),
                child: IconButton(
                  onPressed: () {
                    // Logic هنا
                  },
                  icon: const Icon(
                    Icons.visibility_off,
                    size: 20,
                    color: Color(0xFFC9CECF),
                  ),
                ),
              )
            : null,
        hintText: hintText,
        hintStyle: AppStyles.bold14.copyWith(color: Colors.grey[500]),
        filled: true,
        fillColor: Color(0xffF9FAFA),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),

        enabledBorder: defaultBorder,

        focusedBorder: defaultBorder,
      ),
      keyboardType: TextInputType.emailAddress, // لفتح كيبورد الإيميل مباشرة
    );
  }
}

final OutlineInputBorder defaultBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
);
