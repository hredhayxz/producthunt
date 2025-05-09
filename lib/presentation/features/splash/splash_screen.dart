import 'package:flutter/material.dart';
import 'package:producthunt/core/constant/app_colors.dart';

import '../../../core/constant/app_dimens.dart';
import '../../../core/routes/app_routes.dart';
import '../../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 3)).then((_) {
        if (mounted) {
          Navigator.pushReplacementNamed(context, AppRoutes.productList);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppDimens.h16,
          children: [
            // Logo
            Image.asset(
              Assets.images.appLogo.path,
              height: AppDimens.h48 * 3,
              width: AppDimens.h48 * 3,
            ),

            // App Name
            Text(
              'Product Hunt',
              style: textTheme.headlineMedium?.copyWith(
                fontSize: AppDimens.sp24,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
