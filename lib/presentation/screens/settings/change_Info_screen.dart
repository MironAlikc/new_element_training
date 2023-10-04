import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/presentation/common_widgets/custom_button_widget.dart';
import 'package:new_element_training/presentation/common_widgets/custom_text_field_widget.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
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
            const SizedBox(height: 26),
            Text(
              'Your Name',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 14),
            CustomTextFieldWidget(),
            const SizedBox(height: 14),
            Text(
              'Your Name',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 14),
            CustomTextFieldWidget(),
            const SizedBox(height: 14),
            Text(
              'Your Name',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 14),
            CustomTextFieldWidget(),
            const SizedBox(height: 14),
            Text(
              'Your Name',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 14),
            CustomTextFieldWidget(),
            const SizedBox(height: 14),
            Text(
              'Your Name',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 10),
            CustomTextFieldWidget(),
            const SizedBox(height: 28),
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
