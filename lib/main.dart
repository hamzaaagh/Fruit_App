import 'package:flutter/material.dart';
import 'package:fruit_app/Core/Services/shared_prefrs_singelton.dart';
import 'package:fruit_app/Core/utils/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefrsSingelton.init();
  runApp(const FruitHUP());
}

class FruitHUP extends StatelessWidget {
  const FruitHUP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Cairo',),
      routerConfig: appRouter,
      title: "FruitHUP",
      debugShowCheckedModeBanner: false,
    );
  }
}
