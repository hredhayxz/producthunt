import 'package:flutter/material.dart';

final class AppColors {
  AppColors._();

  // Primary Colors (Product Hunt Theme)
  static const Color primary = Color(0xFFFF5722); // Orange-Red
  static const Color primaryDark = Color(0xFFE64A19);
  static const Color primaryLight = Color(0xFFFF8A65);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;

  // Secondary Colors (Optional Accent)
  static const Color secondary = Color(0xFF795548); // Brown accent
  static const Color secondaryDark = Color(0xFF5D4037);
  static const Color secondaryLight = Color(0xFFA1887F);

  // Status Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color errorLight = Color(0xFFE57373);
  static const Color warning = Color(0xFFFFA000);
  static const Color success = Color(0xFF388E3C);
  static const Color info = Color(0xFF1976D2);

  // Background/Surface Colors
  static const Color background = Color(
    0xFFFFF3E0,
  ); // Light background to match orange
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF2C2C2C);
  static const Color backgroundDark = Color(0xFF121212);

  // On Colors
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF212121);
  static const Color onSurface = Color(0xFF212121);
  static const Color onSurfaceDark = Color(0xFFFFFFFF);

  // Text Colors
  static const Color primaryText = Color(0xFF212121);
  static const Color secondaryText = Color(0xFF616161);
  static const Color hintText = Color(0xFF9E9E9E);
  static const Color disabledText = Color(0xFFBDBDBD);

  // Neutral Greys
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);

  // Light Color Scheme
  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: onPrimary,
    secondary: secondary,
    onSecondary: onSecondary,
    error: error,
    onError: onError,
    surface: surface,
    onSurface: onSurface,
  );

  // Dark Color Scheme
  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primaryLight,
    onPrimary: onBackground,
    secondary: secondaryLight,
    onSecondary: onBackground,
    error: errorLight,
    onError: onError,
    surface: surfaceDark,
    onSurface: onSurfaceDark,
  );
}
