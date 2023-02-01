import 'package:dartweek/app/core/provider/application_binding.dart';
import 'package:dartweek/app/core/ui/theme/theme_config.dart';
import 'package:dartweek/app/pages/home/home_router.dart';
import 'package:dartweek/app/pages/splash/splash_router.dart';
import 'package:flutter/material.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        theme: ThemeConfig.theme,
        title: 'Delivery APP',
        routes: {
          "/": (context) => SplashRouter.page,
          '/home': (context) => HomeRouter.page,
        },
      ),
    );
  }
}
