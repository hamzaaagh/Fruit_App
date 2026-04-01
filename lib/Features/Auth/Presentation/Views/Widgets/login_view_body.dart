import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Widgets/custom_button.dart';
import 'package:fruit_app/Core/Widgets/custom_text_form_field.dart';
import 'package:fruit_app/Core/utils/app_assets.dart';
import 'package:fruit_app/Core/utils/app_colors.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/custom_divider.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/custom_rich_text_auth.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/social_auth_button.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/forget_password_view.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/register_view.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextFormField(hintText: "البريد الإلكتروني"),
            const SizedBox(height: 16),
            CustomTextFormField(hintText: "كلمة المرور", obscureText: true),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  context.push("/${ForgetPasswordView.routeName}");
                },
                child: Text(
                  "نسيت كلمة المرور؟",
                  style: AppStyles.bold14.copyWith(
                    color: AppColors.secondarycolor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            CustomButton(
              title: "تسجيل دخول",
              onPressed: () {
                // Logic هنا
              },
            ),
            const SizedBox(height: 32),
            CustomRichTextAuth(
              text1: "لا تمتلك حساب؟ ",
              text2: "قم بإنشاء حساب",
              onTap: () => context.push("/${RegisterView.routeName}"),
            ),
            const SizedBox(height: 32),
            CustomDivider(),
            const SizedBox(height: 32),
            SocialAuthButton(
              title: " تسجيل بواسطة جوجل",
              image: Assets.assetsImagesGoogleIcon,
              onPressed: () {
                // Logic هنا
              },
            ),
            const SizedBox(height: 16),
            SocialAuthButton(
              title: "تسجيل بواسطة اّبل",
              image: Assets.assetsImagesAppleIcon,
              onPressed: () {
                // Logic هنا
              },
            ),
            const SizedBox(height: 16),
            SocialAuthButton(
              title: "تسجيل بواسطة فيسبوك",
              image: Assets.assetsImagesFacebookIcon,
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
