import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_element_training/presentation/common_widgets/list_contacts_widget.dart';
import 'package:new_element_training/router/router.dart';

@RoutePage()
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({
    super.key,
  });

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Stack(
            children: [
              ListView.builder(
                padding: EdgeInsets.only(top: 50.h),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => ListContactsWidget(
                  onTap: () {
                    AutoRouter.of(context).push(
                      const ProgramRoute(),
                    );
                  },
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    color: Color(0xFFA3A3A3),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                  fillColor: const Color(0xFFF2F2F2).withAlpha(235),
                  filled: true,
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
