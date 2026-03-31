import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Widgets/custom_appbar.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
static const String routeName = 'RegisterView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "حساب جديد"),
      body: SafeArea(
        child: RegisterViewBody(),
      ),
    );
  }
}