import 'package:dartweek/app/core/ui/helpers/size_extensions.dart';
import 'package:dartweek/app/core/ui/theme/theme_config.dart';
import 'package:dartweek/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // context.colors.primary;
    return Theme(
      data: ThemeConfig.theme,
      child: Scaffold(
          body: ColoredBox(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: context.percentHeight(.3)),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 20),
                  DeliveryButton(
                      height: 35,
                      width: context.percentWidth(.6),
                      label: 'Acessars',
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
