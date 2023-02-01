import 'package:dartweek/app/core/ui/styles/app_styles.dart';
import 'package:dartweek/app/core/ui/styles/colors_app.dart';
import 'package:dartweek/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(
      color: Colors.grey.shade400,
    ),
  );

  static final theme = ThemeData(
    primaryColor: ColorsApp.instance.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: AppStyles.instance.primaryButton),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      disabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.instance.textRegular.copyWith(
        color: Colors.black,
      ),
      errorStyle: TextStyles.instance.textRegular.copyWith(
        color: Colors.red,
      ),
    ),

    // buttonS: AppStyles.instance.primaryButton
  );
}
