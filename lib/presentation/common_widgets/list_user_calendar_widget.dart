import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_element_training/resources/resources.dart';

class ListViewUserCalendarWidget extends StatelessWidget {
  const ListViewUserCalendarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.w),
      child: Row(
        children: [
          CircleAvatar(
              radius: 37.r,
              backgroundColor: Colors.white,
              backgroundImage: const AssetImage(
                AppPngs.user,
              )
              // backgroundImage: (AppPngs.logo),
              ),
          SizedBox(width: 18.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "9.30 AM",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 4.h),
              const Text(
                "Aleksander",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
