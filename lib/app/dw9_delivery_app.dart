import 'package:dw9_delivery/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}