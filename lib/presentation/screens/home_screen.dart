import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_element_training/resources/resources.dart';
import 'package:new_element_training/router/router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex = 0;
  final Color _inactiveColor = const Color(0xFF1E1E1E);
  final Color _activeColor = const Color(0xFF587DBD);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        CalendarRoute(),
        ContactsRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tabRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabRouter.activeIndex,
            onTap: (index) => _openPage(index, tabRouter),
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
                  color:
                      _selectedPageIndex == 0 ? _activeColor : _inactiveColor,
                ),
                label: "Calendar",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.contacts,
                  color:
                      _selectedPageIndex == 1 ? _activeColor : _inactiveColor,
                ),
                label: "Contacts",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.settings,
                  color:
                      _selectedPageIndex == 2 ? _activeColor : _inactiveColor,
                ),
                label: "Settings",
              ),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    setState(() => _selectedPageIndex = index);
    tabsRouter.setActiveIndex(index);
  }
}
