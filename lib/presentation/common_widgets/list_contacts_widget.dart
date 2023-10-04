import 'package:flutter/material.dart';
import 'package:new_element_training/resources/resources.dart';

class ListContactsWidget extends StatelessWidget {
  const ListContactsWidget({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 390,
              height: 108,
              padding: const EdgeInsets.all(20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        AppPngs.user,
                      )),
                  SizedBox(width: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Weight 200tb ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA3A3A3),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 18),
                          Text(
                            'Height 6,3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA3A3A3),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Material(
          //   color: Colors.transparent,
          //   child: InkWell(
          //     borderRadius: BorderRadius.circular(13),
          //     onTap: onTap,
          //   ),
          // ),
        ],
      ),
    );
  }
}
