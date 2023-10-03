import 'package:flutter/material.dart';
import 'package:new_element_training/resources/resources.dart';

class ListViewUserCalendar extends StatelessWidget {
  const ListViewUserCalendar({
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
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                AppPngs.user,
              )
              // backgroundImage: (AppPngs.logo),
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
