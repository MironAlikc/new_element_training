import 'package:auto_route/auto_route.dart';
import 'package:new_element_training/presentation/screens/calendar/calendar.dart';
import 'package:new_element_training/presentation/screens/calendar/table_calendar.dart';
import 'package:new_element_training/presentation/screens/contacts.dart';
import 'package:new_element_training/presentation/screens/home_screen.dart';
import 'package:new_element_training/presentation/screens/login_screen.dart';
import 'package:new_element_training/presentation/screens/settings.dart';
import 'package:new_element_training/presentation/screens/splash_screen.dart';

part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: "/",
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: "/login",
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: "/home",
          children: [
            AutoRoute(
              page: CalendarRoute.page,
              path: "calendar",
            ),
            AutoRoute(
              page: ContactsRoute.page,
              path: "contacts",
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: "settings",
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: "calendar",
            ),
          ],
        ),
        AutoRoute(
          page: TableCalendarRoute.page,
          path: "/tabCalendar",
        ),
      ];
}
