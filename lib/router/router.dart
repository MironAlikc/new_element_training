import "package:auto_route/auto_route.dart";
import "package:new_element_training/presentation/screens/%D1%81ontacts/contacts_screen.dart";
import "package:new_element_training/presentation/screens/%D1%81ontacts/create_program_screen.dart";
import "package:new_element_training/presentation/screens/%D1%81ontacts/program_screen.dart";
import "package:new_element_training/presentation/screens/%D1%81ontacts/select_training_screens.dart";
import "package:new_element_training/presentation/screens/calendar/calendar_screen.dart";
import "package:new_element_training/presentation/screens/calendar/table_calendar_screen.dart";
import "package:new_element_training/presentation/screens/home_screen.dart";
import "package:new_element_training/presentation/screens/login_screen.dart";
import "package:new_element_training/presentation/screens/login_screen_tablet.dart";
import "package:new_element_training/presentation/screens/settings/change_Info_screen.dart";
import "package:new_element_training/presentation/screens/settings/settings_screen.dart";
import "package:new_element_training/presentation/screens/settings_program/settings_program_screen.dart";
import "package:new_element_training/presentation/screens/splash_screen.dart";
import "package:new_element_training/presentation/screens/splash_screen_tablet.dart";

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
              page: SplashScreenTabletRoute.page,
              path: "splashTablet",
            ),
            AutoRoute(
              page: LoginScreenTabletRoute.page,
              path: "loginTablet",
            ),
          ],
        ),
        AutoRoute(
          page: TableCalendarRoute.page,
          path: "/tabCalendar",
        ),
        AutoRoute(
          page: ProgramRoute.page,
          path: "/program",
        ),
        AutoRoute(
          page: CreateProgramRoute.page,
          path: "/createProgram",
        ),
        AutoRoute(
          page: ChangeInfoRoute.page,
          path: "/changeInfo",
        ),
        AutoRoute(
          page: SelectTrainingRoute.page,
          path: "/selectTraining",
        ),
        AutoRoute(
          page: SettingsProgramRoute.page,
          path: "/settingsProgram",
        ),
        AutoRoute(
          page: SplashScreenTabletRoute.page,
          path: "/splashScreenTablet",
        ),
        AutoRoute(
          page: LoginScreenTabletRoute.page,
          path: "/loginScreenTablet",
        ),
      ];
}
