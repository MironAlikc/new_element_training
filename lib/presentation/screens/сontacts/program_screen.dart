import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";
import "package:new_element_training/presentation/common_widgets/custom_button_widget.dart";
import "package:new_element_training/presentation/common_widgets/tab_bar_training_widget.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/router.dart";

@RoutePage()
class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70.h,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            AppSvgs.back,
          ),
          onPressed: () {
            AutoRouter.of(context).pop(const ContactsRoute());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 90.r,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage(
                  AppPngs.user,
                ),
              ),
              SizedBox(height: 21.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Container(
                  width: 390.w,
                  height: 180.h,
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
                  child: Column(
                    children: [
                      const Text(
                        "Andrew Brown",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 30,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Phone number  ",
                              style: TextStyle(
                                color: Color(0xFFA3A3A3),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: "+123 456 789 9192 ",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 19.h),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Age  ",
                              style: TextStyle(
                                color: Color(0xFFA3A3A3),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: "32 y  ",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: "Weight  ",
                              style: TextStyle(
                                color: Color(0xFFA3A3A3),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: "200tb  ",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: "Height  ",
                              style: TextStyle(
                                color: Color(0xFFA3A3A3),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: "6,3",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 18,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      const Text(
                        "Some notes about Andrew",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontSize: 18,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              CustomButtonWidget(
                onPressed: () {
                  AutoRouter.of(context).push(
                    const CreateProgramRoute(),
                  );
                },
                title: "Create New Program",
              ),
              const TabBarTrainingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
