import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/resources/resources.dart';
import 'package:new_element_training/router/router.dart';

@RoutePage()
class SelectTrainingScreen extends StatelessWidget {
  const SelectTrainingScreen({
    required this.selectedTrainers,
  });
  final List<String> selectedTrainers;

  @override
  Widget build(BuildContext context) {
    print(selectedTrainers);
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
            AutoRouter.of(context).pop(const CreateProgramRoute());
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Archieve',
              style: TextStyle(
                color: Color(0xFFFF5447),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Program A",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
            SizedBox(
              height: 500,
              width: 500,
              child: ListView.builder(
                itemCount: selectedTrainers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      selectedTrainers[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
