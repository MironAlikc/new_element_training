import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        leadingWidth: 70.0,
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
                const CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    AppPngs.user,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 19,
                    backgroundColor: Color(0xFFC8CE37),
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          context: context,
                          builder: (context) => Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const SizedBox(height: 12),
                                  Container(
                                    width: 50,
                                    height: 7,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
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
              ],
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(right: 280),
              child: Text(
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
            const SizedBox(height: 14),
            CustomTextFieldWidget(
              hintText: "Name",
              onChanged: (val) {},
            ),
            const SizedBox(height: 14),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
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
            const SizedBox(height: 14),
            CustomTextFieldWidget(
              hintText: "Surname",
              onChanged: (val) {},
            ),
            const SizedBox(height: 14),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
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
            const SizedBox(height: 14),
            CustomTextFieldWidget(
              hintText: "+ 123 456 78 89",
              onChanged: (val) {},
            ),
            const SizedBox(height: 14),
            const Padding(
              padding: EdgeInsets.only(right: 330),
              child: Text(
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
            const SizedBox(height: 14),
            CustomTextFieldWidget(
              hintText: "Email",
              onChanged: (val) {},
            ),
            const SizedBox(height: 14),
            const Padding(
              padding: EdgeInsets.only(right: 320),
              child: Text(
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
            const SizedBox(height: 10),
            CustomTextFieldWidget(
              hintText: "Notes",
              onChanged: (val) {},
            ),
            const SizedBox(height: 15),
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
