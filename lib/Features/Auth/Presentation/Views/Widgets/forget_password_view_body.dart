import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Widgets/custom_button.dart';
import 'package:fruit_app/Core/Widgets/custom_text_form_field.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              "لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.",
              style: AppStyles.semiBold16.copyWith(color: Color(0xFF616A6B)),
            ),
            const SizedBox(height: 31),
            CustomTextFormField(hintText: "رقم الهاتف"),
            const SizedBox(height: 30),
            CustomButton(
              title: "نسيت كلمة المرور",
              onPressed: () {
                // Logic هنا
              },
            ),
          ],
        ),
      ),
    );
  }
}
