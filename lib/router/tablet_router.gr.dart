// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'tablet_router.dart';

abstract class _$TabletRouter extends RootStackRouter {
  // ignore: unused_element
  _$TabletRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashTabletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreenTablet(),
      );
    },
    LoginTabletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreenTablet(),
      );
    },
    HomeTabletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenTablet(),
      );
    },

    CalendarTabletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalendarScreenTablet(),
      );
    },
    ContactsTabletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsScreenTablet(),
      );
    },
    SettingsRouteTablet.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreenTablet(),
      );
    },
    // CalendarScreenTabletRoute.name: (routeData) {
    //   return AutoRoutePage<dynamic>(
    //     routeData: routeData,
    //     child: const CalendarScreenTablet(),
    //   );
    // },
  };
}

/// generated route for
/// [CalendarScreenTablet]
class CalendarTabletRoute extends PageRouteInfo<void> {
  const CalendarTabletRoute({List<PageRouteInfo>? children})
      : super(
          CalendarTabletRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarTabletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsScreenTablet]
class ContactsTabletRoute extends PageRouteInfo<void> {
  const ContactsTabletRoute({List<PageRouteInfo>? children})
      : super(
          ContactsTabletRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsTabletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenTablet]
class HomeTabletRoute extends PageRouteInfo<void> {
  const HomeTabletRoute({List<PageRouteInfo>? children})
      : super(
          HomeTabletRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreenTablet]
class LoginTabletRoute extends PageRouteInfo<void> {
  const LoginTabletRoute({List<PageRouteInfo>? children})
      : super(
          LoginTabletRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginTabletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreenTablet]
class SettingsTabletRoute extends PageRouteInfo<void> {
  const SettingsTabletRoute({List<PageRouteInfo>? children})
      : super(
          SettingsTabletRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTabletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreenTablet]
class SplashTabletRoute extends PageRouteInfo<void> {
  const SplashTabletRoute({List<PageRouteInfo>? children})
      : super(
          SplashTabletRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashTabletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

// /// generated route for
// /// [CalendarScreenTablet]
// class CalendarScreenTabletRoute extends PageRouteInfo<void> {
//   const CalendarScreenTabletRoute({List<PageRouteInfo>? children})
//       : super(
//           CalendarScreenTabletRoute.name,
//           initialChildren: children,
//         );

//   static const String name = 'CalendarScreenTabletRoute';

//   static const PageInfo<void> page = PageInfo<void>(name);
// }

/// generated route for
/// [TableCalendarScreenTablet]
class TableCalendarRoute extends PageRouteInfo<void> {
  const TableCalendarRoute({List<PageRouteInfo>? children})
      : super(
          TableCalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'TableCalendarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
