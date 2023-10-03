import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/presentation/screens/calendar/table_calendar.dart';
import 'package:new_element_training/resources/resources.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 76),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {},
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(AppSvgs.calendar),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TableCalendarScreen(),
                      ),
                    );
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
              ),
              controller: controller,
            ),
            const SizedBox(height: 12),
            const ListViewUserWidget(),
          ],
        ),
      ),
    );
  }
}

class ListViewUserWidget extends StatelessWidget {
  const ListViewUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(AppSvgs.settings),
          ),
          SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "9.30 AM",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Aleksander",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
