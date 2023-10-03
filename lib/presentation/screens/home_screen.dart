import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/presentation/screens/calendar/calendar.dart';
import 'package:new_element_training/resources/resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex = 0;
  final _pageControler = PageController();
  final Color _inactiveColor = const Color(0xFF1E1E1E);
  final Color _activeColor = const Color(0xFF587DBD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageControler,
        onPageChanged: (value) {
          _selectedPageIndex = value;
          setState(() {});
        },
        children: const [
          Calendar(),
          Scaffold(
            backgroundColor: Colors.red,
            body: Text("2"),
          ),
          Scaffold(
            backgroundColor: Colors.green,
            body: Text("3"),
          ),
        ],
      ),
      // screens[_pageControler],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _openPage,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF1E1E1E),
        selectedItemColor: const Color(0xFF587DBD),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppSvgs.calendar,
              color: _selectedPageIndex == 0 ? _activeColor : _inactiveColor,
            ),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppSvgs.contacts,
              color: _selectedPageIndex == 1 ? _activeColor : _inactiveColor,
            ),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppSvgs.settings,
              color: _selectedPageIndex == 2 ? _activeColor : _inactiveColor,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(
      () => _selectedPageIndex = index,
    );
    _pageControler.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}
