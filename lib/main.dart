import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_element_training/bloc/auth_bloc.dart';
import 'package:new_element_training/core/dio_settings/dio_settings.dart';
import 'package:new_element_training/data/repositories/auth_repositories.dart';
import 'package:new_element_training/router/router.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepositories(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        // RepositoryProvider(
        //   create: (context) => AuthBloc(
        //     dio: RepositoryProvider.of<DioSettings>(context).dio,
        //   ),
        // ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              repo: RepositoryProvider.of<AuthRepositories>(context),
            ),
          ),
          // BlocProvider(
          //   create: (context) => ForgotPasswordBloc(
          //     repo: RepositoryProvider.of<ForgotPasswordRepo>(context),
          //   ),
          // ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          splitScreenMode: true,
          child: TextFieldUnfocus(
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: "Flutter Demo",
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                // textTheme: GoogleFonts.interTextTheme(),
              ),
              routerConfig: _router.config(),
              // home: ScreenTypeLayout(
              //   mobile: const HomeScreen(),
              //   tablet: const SplashScreen(),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldUnfocus extends StatelessWidget {
  const TextFieldUnfocus({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: child,
      );
}
