import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";
import "package:new_element_training/presentation/common_widgets/custom_button_widget.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/router.dart";

@RoutePage()
class CreateProgramScreen extends StatefulWidget {
  const CreateProgramScreen({super.key});

  @override
  State<CreateProgramScreen> createState() => _CreateProgramScreenState();
}

class _CreateProgramScreenState extends State<CreateProgramScreen> {
  List<String> letters = [
    "A1",
    "A2",
    "A3",
    "A4",
    "B1",
    "B5",
    "B6",
    "B8",
    "C1",
    "C3",
    "C5",
    "C7",
    "D5",
    "D6",
    "D7",
    "E1",
    "E2",
    "E3",
    "E4",
    "E5",
    "F1",
    "F2",
    "F3",
    "G1",
    "G3",
    "H1",
    "H2",
    "J1",
  ];
  List<String> selectedLetters = [];
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
      body: Center(
        child: Column(
          children: [
            const Text(
              "Select training \nmachienes for Program A",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 24,
                fontFamily: "Inter",
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 40,
              runSpacing: 20,
              children: [
                for (final letter in letters)
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedLetters.contains(letter)) {
                          selectedLetters.remove(letter);
                        } else {
                          selectedLetters.add(letter);
                        }
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 55,
                      decoration: BoxDecoration(
                        color: selectedLetters.contains(letter)
                            ? const Color(0xFFC8CE37)
                            : null,
                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          letter,
                          style: TextStyle(
                            color: selectedLetters.contains(letter)
                                ? Colors.white
                                : const Color(0xFFA3A3A3),
                            fontSize: 40,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            CustomButtonWidget(
              onPressed: () {
                AutoRouter.of(context).push(
                  SelectTrainingRoute(selectedTrainers: selectedLetters),
                );
              },
              title: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
