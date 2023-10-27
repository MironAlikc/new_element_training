// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CalendarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalendarScreen(),
      );
    },
  
    ChangeInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangeInfoScreen(),
      );
    },
    ContactsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsScreen(),
      );
    },
    
    CreateProgramRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateProgramScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
   
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
 
    ProgramRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProgramScreen(),
      );
    },
    SelectTrainingRoute.name: (routeData) {
      final args = routeData.argsAs<SelectTrainingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectTrainingScreen(selectedTrainers: args.selectedTrainers),
      );
    },
    SettingsProgramRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsProgramScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
   
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
 
    TableCalendarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TableCalendarScreen(),
      );
    },
  };
}

/// generated route for
/// [CalendarScreen]
class CalendarRoute extends PageRouteInfo<void> {
  const CalendarRoute({List<PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}



/// generated route for
/// [ChangeInfoScreen]
class ChangeInfoRoute extends PageRouteInfo<void> {
  const ChangeInfoRoute({List<PageRouteInfo>? children})
      : super(
          ChangeInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangeInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsScreen]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}


/// generated route for
/// [CreateProgramScreen]
class CreateProgramRoute extends PageRouteInfo<void> {
  const CreateProgramRoute({List<PageRouteInfo>? children})
      : super(
          CreateProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateProgramRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}



/// generated route for
/// [ProgramScreen]
class ProgramRoute extends PageRouteInfo<void> {
  const ProgramRoute({List<PageRouteInfo>? children})
      : super(
          ProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgramRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectTrainingScreen]
class SelectTrainingRoute extends PageRouteInfo<SelectTrainingRouteArgs> {
  SelectTrainingRoute({
    required List<String> selectedTrainers,
    List<PageRouteInfo>? children,
  }) : super(
          SelectTrainingRoute.name,
          args: SelectTrainingRouteArgs(selectedTrainers: selectedTrainers),
          initialChildren: children,
        );

  static const String name = 'SelectTrainingRoute';

  static const PageInfo<SelectTrainingRouteArgs> page =
      PageInfo<SelectTrainingRouteArgs>(name);
}

class SelectTrainingRouteArgs {
  const SelectTrainingRouteArgs({required this.selectedTrainers});

  final List<String> selectedTrainers;

  @override
  String toString() {
    return 'SelectTrainingRouteArgs{selectedTrainers: $selectedTrainers}';
  }
}

/// generated route for
/// [SettingsProgramScreen]
class SettingsProgramRoute extends PageRouteInfo<void> {
  const SettingsProgramRoute({List<PageRouteInfo>? children})
      : super(
          SettingsProgramRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsProgramRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreenTablet]
class SettingsRouteTablet extends PageRouteInfo<void> {
  const SettingsRouteTablet({List<PageRouteInfo>? children})
      : super(
          SettingsRouteTablet.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRouteTablet';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}


/// generated route for
/// [TableCalendarScreen]
class TableCalendarRoute extends PageRouteInfo<void> {
  const TableCalendarRoute({List<PageRouteInfo>? children})
      : super(
          TableCalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'TableCalendarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
