import "dart:async";

import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";
import "package:new_element_training/presentation/common_widgets/custom_timer_widget.dart";
import "package:new_element_training/presentation/common_widgets/settings_for_widget.dart";
import "package:new_element_training/presentation/screens/stopwatch_timer%20/stopwatch_timer_screens.dart";
import "package:new_element_training/presentation/themes/app_fonts.dart";
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
          InkWell(
            onTap: () {
              unawaited(
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentTextStyle: const TextStyle(),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      title: const Text(
                        textAlign: TextAlign.center,
                        "Settings for B5 (A)",
                      ),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              SettingsForWidget(
                                text: "Seats",
                              ),
                              SizedBox(width: 20),
                              SettingsForWidget(
                                text: "Pin",
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SettingsForWidget(
                                text: "Back",
                              ),
                              SizedBox(width: 20),
                              SettingsForWidget(
                                text: "Weight",
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            textAlign: TextAlign.center,
                            "* Weight for current workout",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Color(0xFFC8CE37),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 52.h,
                                width: 170.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFC8CE37),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                  ),
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text(
                                    "Ok",
                                    textAlign: TextAlign.center,
                                    style: AppFonts.w700s18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              );
            },
            child: SvgPicture.asset(
              AppSvgs.settingsProgram,
            ),
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
