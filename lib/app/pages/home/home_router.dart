import 'package:dartweek/app/pages/home/home_controller.dart';
import 'package:dartweek/app/pages/home/home_page.dart';
import 'package:dartweek/app/repositories/products/impl_products_repository.dart';
import 'package:dartweek/app/repositories/products/products_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
            create: ((context) => ImplProductsRepository(
                  dio: context.read(),
                )),
          ),
          Provider(
            create: (context) => HomeController(
              context.read(),
            ),
          ),
        ],
        child: const HomePage(),
      );
}
