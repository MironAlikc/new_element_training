import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:new_element_training/presentation/themes/app_fonts.dart";

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.onPressed,
    required this.title,
    super.key,
  });
  final Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      width: 390.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC8CE37),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppFonts.w700s18,
        ),
      ),
    );
  }
}
