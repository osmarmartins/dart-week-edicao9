import 'package:dw9_delivery/app/core/provider/application_biding.dart';
import 'package:dw9_delivery/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery/app/pages/home/home_router.dart';
import 'package:dw9_delivery/app/pages/product_detail/product_detail_router.dart';
import 'package:dw9_delivery/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBiding(
      child: MaterialApp(
        title: 'Delivery App',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
        },
      ),
    );
  }
}
