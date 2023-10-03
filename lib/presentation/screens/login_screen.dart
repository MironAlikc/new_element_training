import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_element_training/bloc/auth_bloc.dart';
import 'package:new_element_training/presentation/common_widgets/custom_button.dart';
import 'package:new_element_training/presentation/common_widgets/custom_text_field.dart';
import 'package:new_element_training/presentation/screens/home_screen.dart';
import 'package:new_element_training/presentation/themes/app_fonts.dart';
import 'package:new_element_training/resources/resources.dart';

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
            const SizedBox(height: 60),
            const Text(
              "Log In",
              style: AppFonts.w800s28,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 22),
            CustomTextField(
              errorText: errorText,
              controller: controlerEmail,
              hintText: "Email or Phone Number",
              onChanged: (val) {},
            ),
            const SizedBox(height: 15),
            CustomTextField(
              errorText: errorText,
              controller: controlerPassword,
              hintText: "Password",
              onChanged: (val) {},
            ),
            const SizedBox(height: 62),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSucces) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
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
              child: CustomButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(
                    GetTokenEvent(
                      login: controlerEmail.text,
                      password: controlerPassword.text,
                    ),
                  );
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