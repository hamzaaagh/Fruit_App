import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Widgets/custom_appbar.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const String routeName = 'ForgetPasswordView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "نسيان كلمة المرور"),
      body: SafeArea(child: ForgetPasswordViewBody()),
    );
  }
}