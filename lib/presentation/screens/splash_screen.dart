import "dart:async";

import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:new_element_training/presentation/themes/app_colors.dart";
import "package:new_element_training/presentation/themes/app_fonts.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/router.dart";

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => AutoRouter.of(context).push(
        const LoginRoute(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: AppColors.gradientBGColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppPngs.logo,
              height: 125.h,
              width: 125.w,
            ),
            SizedBox(height: 60.h),
            const Text(
              "NEW ELEMENT",
              style: AppFonts.w800s38,
            ),
            const Text(
              "TRAINING",
              style: AppFonts.w600s34,
            ),
          ],
        ),
      ),
    );
  }
}
