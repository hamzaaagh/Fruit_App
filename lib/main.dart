import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_router.dart';

void main() {
  runApp(const FruitHUP());
}

class FruitHUP extends StatelessWidget {
  const FruitHUP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: "FruitHUP",
      debugShowCheckedModeBanner: false,
    );
  }
}
