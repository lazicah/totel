
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:totel/Common/Theme/colors/app_colors.dart';

class Util {
  static final RegExp _phoneRegExp = RegExp(
    '[0-9]{11}',
  );

  static bool isPhoneNumber(String value) => _phoneRegExp.hasMatch(value);

  static void showInfoSnack(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.white,
              ),
              const Gap(12),
              Expanded(child: Text(message)),
            ],
          ),
          backgroundColor: AppColors.primaryMain,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  static void showErrorSnack(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.error,
                color: Colors.white,
              ),
              const Gap(12),
              Expanded(child: Text(message)),
            ],
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }
}
