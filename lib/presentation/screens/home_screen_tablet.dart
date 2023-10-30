import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/tablet_router.dart";

@RoutePage()
class HomeScreenTablet extends StatefulWidget {
  const HomeScreenTablet({super.key});

  @override
  State<HomeScreenTablet> createState() => _HomeScreenTabletState();
}

class _HomeScreenTabletState extends State<HomeScreenTablet> {
  var _selectedPageIndex = 0;
  final Color _inactiveColor = const Color(0xFF1E1E1E);
  final Color _activeColor = const Color(0xFF587DBD);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        CalendarTabletRoute(),
        ContactsTabletRoute(),
        SettingsTabletRoute(),
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
                  colorFilter: ColorFilter.mode(
                    _selectedPageIndex == 0 ? _activeColor : _inactiveColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Calendar",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.contacts,
                  colorFilter: ColorFilter.mode(
                    _selectedPageIndex == 1 ? _activeColor : _inactiveColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Contacts",
              ), 
              BottomNavigationBarItem(
                icon: SvgPicture.asset(   
                  AppSvgs.settings,
                  colorFilter: ColorFilter.mode(
                    _selectedPageIndex == 2 ? _activeColor : _inactiveColor,
                    BlendMode.srcIn,
                  ),
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
