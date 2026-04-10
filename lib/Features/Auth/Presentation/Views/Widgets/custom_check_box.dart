import 'package:flutter/material.dart';

import 'package:fruit_app/Core/utils/app_colors.dart';
class CustomCheckbox extends StatefulWidget {
   const CustomCheckbox({super.key, required this.onChanged,});

  final ValueChanged<bool> onChanged;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked; // تبديل الحالة عند النقر
        });
        widget.onChanged(_isChecked);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // مدة التحريك
        curve: Curves.easeInOut, // نوع الانسيابية
        width: 30, // عرض المربع
        height: 30, // طول المربع
        decoration: BoxDecoration(
          color: _isChecked ? AppColors.primarycolor : Colors.transparent, // اللون الأخضر الغامق عند التفعيل
          borderRadius: BorderRadius.circular(8), // حواف دائرية
          border: Border.all(
            color: _isChecked ? AppColors.primarycolor : Colors.grey.shade400,
            width: 2,
          ),
        ),
        child: _isChecked
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              )
            : null, // تظهر علامة الصح فقط عند التفعيل
      ),
    );
  }
}