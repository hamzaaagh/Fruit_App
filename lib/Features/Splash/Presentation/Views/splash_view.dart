import 'package:flutter/material.dart';
import 'package:fruit_app/Features/Splash/Presentation/Views/Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'SplashView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }
}