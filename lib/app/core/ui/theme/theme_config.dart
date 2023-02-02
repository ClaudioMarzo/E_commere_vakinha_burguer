import 'package:app_delivery/app/core/ui/styles/app_styles.dart';
import 'package:app_delivery/app/core/ui/styles/colors_app.dart';
import 'package:app_delivery/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(color: Colors.grey[400]!),
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    primaryColor: ColorsApp.instance?.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance!.primary,
      primary: ColorsApp.instance!.primary,
      secondary: ColorsApp.instance!.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.instance?.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(10),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.instance.TextRegular.copyWith(color: Colors.black),
      errorStyle: TextStyles.instance.TextRegular.copyWith(color: Colors.red),
    ),
  );
}
