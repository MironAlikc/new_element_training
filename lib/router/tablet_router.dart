import "package:auto_route/auto_route.dart";
import "package:new_element_training/presentation/screens/%D1%81ontacts/contacts_screen_tablet.dart";
import "package:new_element_training/presentation/screens/calendar/calendar_screen_tablet.dart";
import "package:new_element_training/presentation/screens/home_screen_tablet.dart";
import "package:new_element_training/presentation/screens/login_screen_tablet.dart";
import "package:new_element_training/presentation/screens/settings/settings_screen_tablet.dart";
import "package:new_element_training/presentation/screens/splash_screen_tablet.dart";
import "package:new_element_training/router/router.dart";

part "tablet_router.gr.dart";

@AutoRouterConfig()
class TabletRouter extends _$TabletRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashTabletRoute.page,
          path: "/",
        ),
        AutoRoute(
          page: LoginTabletRoute.page,
          path: "/loginTablet",
        ),
        AutoRoute(
          page: HomeTabletRoute.page,
          path: "/homeTablet",
          children: [
            AutoRoute(
              page: CalendarTabletRoute.page,
              path: "calendarTablet",
            ),
            AutoRoute(
              page: ContactsTabletRoute.page,
              path: "contactsTablet",
            ),
            AutoRoute(
              page: SettingsTabletRoute.page,
              path: "settingsTablet",
            ),
          ],
        ),
        // AutoRoute(
        //   page: CalendarScreenTabletRoute.page,
        //   path: "/сalendarScreenTabletRoute",
        // ),
      ];
}
