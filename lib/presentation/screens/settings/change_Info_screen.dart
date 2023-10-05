import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/presentation/common_widgets/custom_button_widget.dart';
import 'package:new_element_training/presentation/common_widgets/custom_text_field_widget.dart';
import 'package:new_element_training/presentation/common_widgets/settings_camera.widget.dart';
import 'package:new_element_training/resources/resources.dart';
import 'package:new_element_training/router/router.dart';

@RoutePage()
class ChangeInfoScreen extends StatelessWidget {
  const ChangeInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70.w,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            AppSvgs.back,
          ),
          onPressed: () {
            AutoRouter.of(context).pop(const SettingsRoute());
          },
        ),
      ),
      body: SingleChildScrollView(
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
                    //radius: 19.r,
                    backgroundColor: const Color(0xFFC8CE37),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            context: context,
                            builder: (context) => Container(
                              height: 250.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 12.h),
                                  Container(
                                    width: 50.w,
                                    height: 7.h,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.r),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 40.h),
                                  SettingsCamersWidget(
                                    image: AppSvgs.photo,
                                    title: "Select from Gallery",
                                    onPressed: () {},
                                  ),
                                  SettingsCamersWidget(
                                    image: AppSvgs.camera,
                                    title: "Open Camera",
                                    onPressed: () {},
                                  ),
                                  SettingsCamersWidget(
                                    image: AppSvgs.delete,
                                    title: "Delete Photo",
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.only(right: 280.w),
              child: const Text(
                'Your Name',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            CustomTextFieldWidget(
              hintText: "Name",
              onChanged: (val) {},
            ),
            SizedBox(height: 14.h),
            Padding(
              padding: EdgeInsets.only(right: 250.w),
              child: const Text(
                'Your Surname',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 14.r),
            CustomTextFieldWidget(
              hintText: "Surname",
              onChanged: (val) {},
            ),
            SizedBox(height: 14.h),
            Padding(
              padding: EdgeInsets.only(right: 250.w),
              child: const Text(
                'Phone number',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            CustomTextFieldWidget(
              hintText: "+ 123 456 78 89",
              onChanged: (val) {},
            ),
            SizedBox(height: 14.h),
            Padding(
              padding: EdgeInsets.only(right: 330.w),
              child: const Text(
                'Email',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            CustomTextFieldWidget(
              hintText: "Email",
              onChanged: (val) {},
            ),
            SizedBox(height: 14.h),
            Padding(
              padding: EdgeInsets.only(right: 320.w),
              child: const Text(
                'Notes',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextFieldWidget(
              hintText: "Notes",
              onChanged: (val) {},
            ),
            SizedBox(height: 15.h),
            CustomButtonWidget(
              onPressed: () {
                AutoRouter.of(context).push(
                  const ChangeInfoRoute(),
                );
              },
              title: 'Change Info',
            )
          ],
        ),
      ),
    );
  }
}
