import 'package:flutter/material.dart';

class TabBarTrainingWidget extends StatefulWidget {
  const TabBarTrainingWidget({super.key});

  @override
  State<TabBarTrainingWidget> createState() => _TabBarTrainingWidgetState();
}

class _TabBarTrainingWidgetState extends State<TabBarTrainingWidget> {
  List<Widget> tabItems = [
    const Text('Program A'),
    const Text('Program B'),
  ];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: TabBar(
            onTap: (value) {
              currentTabIndex = value;
              setState(() {});
            },
            labelColor: const Color(0xFF1E1E1E),
            unselectedLabelColor: const Color(0xFFA3A3A3),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: const EdgeInsets.all(10),
            tabs: const [
              Tab(
                height: 50,
                child: Text(
                  'Current Program',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                height: 50,
                child: Text(
                  'Archieve',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
            isScrollable: true,
          ),
        ),
        SingleChildScrollView(child: tabItems[currentTabIndex]),
      ],
    );
  }
}
