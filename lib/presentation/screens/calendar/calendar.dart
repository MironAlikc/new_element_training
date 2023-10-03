import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/presentation/common_widgets/list_user_calendar.dart';
import 'package:new_element_training/resources/resources.dart';
import 'package:new_element_training/router/router.dart';

@RoutePage()
class Calendar extends StatefulWidget {
  const Calendar({
    super.key,
  });

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 50,
        ),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {},
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(AppSvgs.calendar),
                  onPressed: () {
                    AutoRouter.of(context).push(const TableCalendarRoute());
                  },
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Color(0XFF5B6975),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: 0.44,
                ),
                fillColor: const Color(0xFFF2F2F2),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white, width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white, width: 0.5),
                ),
              ),
              controller: controller,
            ),
            const SizedBox(height: 12),
            const ListViewUserCalendar(),
          ],
        ),
      ),
    );
  }
}
