import 'package:dartweek/app/core/rest_client/custom_dio.dart';
import 'package:dartweek/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashRouter {
  SplashRouter._();

  static Widget get page => MultiProvider(
        providers: [Provider(create: ((context) => CustomDio()))],
        child: SplashPage(),
      );
}
