import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";
import "package:new_element_training/presentation/common_widgets/custom_timer_widget.dart";
import "package:new_element_training/presentation/screens/stopwatch_timer%20/stopwatch_timer_screens.dart";
import "package:new_element_training/resources/resources.dart";

@RoutePage()
class SettingsProgramScreen extends StatelessWidget {
  const SettingsProgramScreen({super.key});

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
            AutoRouter.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Settings for B5 (A)",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontSize: 24,
              fontFamily: "Inter",
              fontWeight: FontWeight.w800,
              height: 0,
            ),
          ),
          const SizedBox(height: 46),
          SvgPicture.asset(
            AppSvgs.settingsProgram,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTimerWidget(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const StopwatchTimerScreens(),
                      ),
                    );
                  },
                  title: "Timer",
                  image: AppSvgs.timer,
                ),
                CustomTimerWidget(
                  onPressed: () {},
                  title: "Metronom",
                  image: AppSvgs.metronom,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "History",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 24,
                fontFamily: "Inter",
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
