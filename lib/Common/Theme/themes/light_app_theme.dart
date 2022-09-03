import 'package:totel/Common/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightAppTheme extends AppTheme {
  const LightAppTheme() : super();

  @override
  Color get backgroundColor => const Color(0xFFFFFFFF);

  @override
  Color get primaryColor => AppColors.primaryMain;

  @override
  Color get errorColor => const Color(0xFFFF4842);

  @override
  Color get infoColor => const Color(0xFFFFC107);

  @override
  Color get successColor => const Color(0xFF54D62C);

  @override
  Color get cardColor => const Color(0xFFFFFFFF);

  @override
  ThemeData get themeData {
    final base = ThemeData(
      primaryColor: primaryColor,
    );
    return base.copyWith(
      appBarTheme: base.appBarTheme.copyWith(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: backgroundColor,
        foregroundColor: Colors.black,
        titleTextStyle: AppTextStyle.body2.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 1,
      ),
      splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      scaffoldBackgroundColor: AppColors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          onPrimary: Colors.white,
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      indicatorColor: primaryColor,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: primaryColor,
        primaryColorDark: primaryColor,
        backgroundColor: backgroundColor,
        cardColor: cardColor,
        errorColor: errorColor,
      ),
    );
  }

  @override
  List<Object?> get props => [
        backgroundColor,
        primaryColor,
        cardColor,
        errorColor,
        successColor,
        infoColor,
      ];

  @override
  String get themeName => 'Light';
}
