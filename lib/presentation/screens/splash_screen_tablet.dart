import "dart:async";

import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:new_element_training/presentation/themes/app_colors.dart";
import "package:new_element_training/presentation/themes/app_fonts.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/router.dart";

@RoutePage()
class SplashScreenTablet extends StatefulWidget {
  const SplashScreenTablet({super.key});

  @override
  State<SplashScreenTablet> createState() => _SplashScreenTabletState();
}

class _SplashScreenTabletState extends State<SplashScreenTablet> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => AutoRouter.of(context).push(
        const LoginScreenTabletRoute(),
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
              height: 232.h,
              width: 230.w,
            ),
            SizedBox(height: 60.h),
            const Text(
              "NEW ELEMENT",
              style: AppFonts.w800s62,
            ),
            const Text(
              "TRAINING",
              style: AppFonts.w600s55,
            ),
          ],
        ),
      ),
    );
  }
}
