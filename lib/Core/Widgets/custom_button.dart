import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_colors.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    this.isActive = true,
  });
  final String title;
  final void Function()? onPressed;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          isActive ? onPressed?.call() : null;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive
              ? AppColors.primarycolor
              : Colors.grey, // أخضر أو أزرق
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          title,
          style: AppStyles.bold16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
