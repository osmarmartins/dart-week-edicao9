import 'package:dw9_delivery/app/core/rest_client/custom_dio.dart';
import 'package:dw9_delivery/app/pages/home/home_page.dart';
import 'package:dw9_delivery/app/repositories/products/products_repository.dart';
import 'package:dw9_delivery/app/repositories/products/products_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
            create: (context) => ProductsRepositoryImpl(
              dio: context.read<CustomDio>(),
            ),
          ),
        ],
        child: const HomePage(),
      );
}
