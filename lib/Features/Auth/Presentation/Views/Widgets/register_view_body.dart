import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Widgets/custom_button.dart';
import 'package:fruit_app/Core/Widgets/custom_text_form_field.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/accept_terms_widget.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/custom_rich_text_auth.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            CustomTextFormField(hintText: "الاسم الكامل"),
            const SizedBox(height: 16),
            CustomTextFormField(hintText: "البريد الإلكتروني"),
            const SizedBox(height: 16),
            CustomTextFormField(hintText: "كلمة المرور", obscureText: true),
            const SizedBox(height: 16),
            AcceptTermsWidget(),
            const SizedBox(height: 30),
            CustomButton(
              title: "إنشاء حساب جديد",
              onPressed: () {
              },
            ),
            const SizedBox(height: 26),
            CustomRichTextAuth(
              text1: "تمتلك حساب بالفعل؟ ",
              text2: "تسجيل دخول",
              onTap: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
