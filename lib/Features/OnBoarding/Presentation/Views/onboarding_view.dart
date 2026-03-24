import 'package:flutter/material.dart';
import 'package:fruit_app/Features/OnBoarding/Presentation/Views/Widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const String routeName = 'OutboardingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: OnboardingViewBody()),
    );
  }
}
