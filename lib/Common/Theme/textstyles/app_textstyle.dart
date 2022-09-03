import 'package:totel/Common/Theme/colors/colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppTextStyle extends Equatable {
  /// Headline 1 text style
  static TextStyle get headline1 {
    return const TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w700,
    );
  }

  /// Headline 2 text style
  static TextStyle get headline2 {
    return const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
    );
  }

  /// Headline 3 text style
  static TextStyle get headline3 {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
    );
  }

  /// Headline 4 text style
  static TextStyle get headline4 {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }

  /// Headline 5 text style
  static TextStyle get headline5 {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  /// Headline 6 text style
  static TextStyle get headline6 {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
  }

  /// Body 1 text style
  static TextStyle get body1 {
    return const TextStyle(
      fontSize: 16,
    );
  }

  /// Body 2 text style
  static TextStyle get body2 {
    return const TextStyle(
      fontSize: 14,
    );
  }

  /// Subtitle 1 text style
  static TextStyle get subTitle1 {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  /// Subtitle 2 text style
  static TextStyle get subTitle2 {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  /// Caption text style
  static TextStyle get caption {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.gray,
    );
  }

  static TextStyle get splashText {
    return const TextStyle(
      fontSize: 14,
      color: Colors.white,
      letterSpacing: 8,
      fontWeight: FontWeight.w700,
    );
  }

  @override
  List<Object?> get props => [];
}
