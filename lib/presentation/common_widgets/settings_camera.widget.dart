import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";

class SettingsCamersWidget extends StatelessWidget {
  const SettingsCamersWidget({
    required this.image,
    required this.title,
    super.key,
    this.onPressed,
  });

  final String image;
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            height: 22.h,
            width: 22.w,
          ),
          SizedBox(width: 30.w),
          TextButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
