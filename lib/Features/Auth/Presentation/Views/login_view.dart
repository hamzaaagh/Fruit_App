import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Widgets/custom_appbar.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "تسجيل الدخول"),
      body: SafeArea(child: LoginViewBody(),),
    );
  }
}
