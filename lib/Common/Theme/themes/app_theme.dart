import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppTheme extends Equatable {
  const AppTheme();

  // Application name
  final String appName = 'Totel';

  String get themeName;

  Color get primaryColor;

  Color get backgroundColor;

  Color get cardColor;

  Color get errorColor;

  Color get successColor;

  Color get infoColor;

  ThemeData get themeData;
}
