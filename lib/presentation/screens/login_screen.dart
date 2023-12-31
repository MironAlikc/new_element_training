import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:new_element_training/bloc/auth_bloc.dart";
import "package:new_element_training/presentation/common_widgets/custom_button_widget.dart";
import "package:new_element_training/presentation/common_widgets/custom_text_field_widget.dart";
import "package:new_element_training/presentation/themes/app_fonts.dart";
import "package:new_element_training/resources/resources.dart";
import "package:new_element_training/router/router.dart";

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController controlerEmail = TextEditingController();
  final TextEditingController controlerPassword = TextEditingController();
  String? errorText;
  // late SharedPreferences prefs;
  // initPrefs() {
  //   prefs = SharedPreferences.getInstance() as SharedPreferences;
  // }

  // @override
  // initState() {
  //   initPrefs();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppPngs.loginPhoto,
            ),
            SizedBox(height: 60.h),
            const Text(
              "Log In",
              style: AppFonts.w800s28,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 22.h),
            CustomTextFieldWidget(
              errorText: errorText,
              controller: controlerEmail,
              hintText: "Email or Phone Number",
              onChanged: (val) {},
            ),
            SizedBox(height: 15.h),
            CustomTextFieldWidget(
              errorText: errorText,
              controller: controlerPassword,
              hintText: "Password",
              onChanged: (val) {},
            ),
            SizedBox(height: 62.h),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSucces) {
                  AutoRouter.of(context).push(const HomeRoute());
                }
                if (state is AuthError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Center(child: Text("Error")),
                    ),
                    // errorText = 'Error';
                    // setState(() {}
                  );
                }
              },
              child: CustomButtonWidget(
                onPressed: () {
                  print("1234");
                  BlocProvider.of<AuthBloc>(context).add(
                    GetTokenEvent(
                      login: controlerEmail.text,
                      password: controlerPassword.text,
                    ),
                  );
                  print("1234");
                },
                title: "Log In",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
