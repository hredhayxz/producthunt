import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final class AppDimens {
  AppDimens._();

  static final AppDimens instance = AppDimens._();

  // Heights
  static double get h1 => 1.h;

  static double get h8 => 8.h;

  static double get h14 => 14.h;

  static double get h16 => 16.h;

  static double get h48 => 48.h;

  // Widths
  static double get w1 => 1.w;

  static double get w8 => 8.w;

  static double get w12 => 12.w;

  static double get w16 => 16.w;

  static double get w24 => 24.w;

  // Radius
  static double get r12 => 12.r;

  // Font Sizes
  static double get sp10 => 10.sp;

  static double get sp12 => 12.sp;

  static double get sp14 => 14.sp;

  static double get sp16 => 16.sp;

  static double get sp18 => 18.sp;

  static double get sp20 => 20.sp;

  static double get sp24 => 24.sp;

  static double get sp28 => 28.sp;

  static double get sp32 => 32.sp;

  // Paddings
  static EdgeInsets get paddingHorizontal16 =>
      EdgeInsets.symmetric(horizontal: w16);

  static EdgeInsets get paddingVertical14 =>
      EdgeInsets.symmetric(vertical: h14);
}
