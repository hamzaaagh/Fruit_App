import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_colors.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.widget, required this.isLoading});
  final Widget widget;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    // يمكنك التحكم في هذا المتغير بناءً على حالة التحميل
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primarycolor),
      ),
      // لون الخلفية الشفافة عند التحميل
      opacity: 0.3,
      inAsyncCall: isLoading, // يمكنك التحكم في هذا المتغير بناءً على حالة التحميل
      child: widget, // يمكنك وضع أي محتوى تريده هنا
    );
  }
}
