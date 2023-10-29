import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:new_element_training/resources/resources.dart";

class ListViewUserCalendarWidget extends StatelessWidget {
  const ListViewUserCalendarWidget({
    required this.onTap,
    super.key,
  });
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.w,
        horizontal: 5.h,
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 390.w,
              height: 108.h,
              padding: EdgeInsets.all(20.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 37.r,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage(
                      AppPngs.imageUser,
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "9.30 AM",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontSize: 16,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      const Text(
                        "Anna Brown",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 18,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Material(
          //   color: Colors.transparent,
          //   child: InkWell(
          //     borderRadius: BorderRadius.circular(13),
          //     onTap: onTap,
          //   ),
          // ),
        ],
      ),
    );
  }
}
