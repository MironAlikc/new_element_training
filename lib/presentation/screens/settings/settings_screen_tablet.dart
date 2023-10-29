import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:new_element_training/presentation/common_widgets/custom_button_widget.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/router.dart";

@RoutePage()
class SettingsScreenTablet extends StatelessWidget {
  const SettingsScreenTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 90.r,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage(
                        AppPngs.user,
                      ),
                    ),
                    Positioned(
                      right: 10.r,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 19.r,
                        backgroundColor: const Color(0xFFC8CE37),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Container(
                    width: 390.w,
                    height: 180.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      shadows: [
                        BoxShadow(
                          color: const Color(0x26000000),
                          blurRadius: 4.r,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Andrew Trainer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 30,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Phone number",
                            // textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Color(0xFFA3A3A3),
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.h),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Email",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA3A3A3),
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.h),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Some info",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA3A3A3),
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
                CustomButtonWidget(
                  onPressed: () {
                    AutoRouter.of(context).push(
                      const ChangeInfoRoute(),
                    );
                  },
                  title: "Change Info",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
