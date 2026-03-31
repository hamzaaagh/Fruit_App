import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart'; // تأكد من وجود المسار الصحيح

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
  });

  final String hintText;
  final bool obscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isHidden;

  @override
  void initState() {
    super.initState();
    // نضبط الحالة الابتدائية بناءً على ما إذا كان الحقل أصلاً كلمة مرور
    _isHidden = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '●',
      style: AppStyles.semiBold16.copyWith(
        color: const Color(0xFF0C0D0D),
        fontSize: _isHidden ? 10 : 16,
        letterSpacing: _isHidden ? 2.0 : 0.0,
      ),
      obscureText: _isHidden,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? Padding(
                padding: const EdgeInsetsDirectional.only(end: 16),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                  icon: Icon(
                    _isHidden ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                    color: const Color(0xFFC9CECF),
                  ),
                ),
              )
            : null,
        hintText: widget.hintText,
        hintStyle: AppStyles.bold14.copyWith(color: Colors.grey[500]),
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        enabledBorder: defaultBorder,
        focusedBorder: defaultBorder,
      ),
      keyboardType: widget.obscureText
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }
}

final OutlineInputBorder defaultBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
);
