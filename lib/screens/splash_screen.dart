import 'package:flutter/material.dart';
import 'package:sleek_design/screens/login_screen.dart';
import 'package:sleek_design/screens/signup_screen.dart';
import 'package:sleek_design/themes/theme.dart';
import 'package:sleek_design/widgets/custom_button.dart';
import 'package:sleek_design/widgets/custom_scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40,
              ),
              child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      TextSpan(
                        text:
                            '\nEnter your personal details to your employee account',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ])),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: "Sign in",
                      onTap: LoginScreen(),
                      color: Colors.transparent,
                      fontColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: "Sign up",
                      onTap: SignUpScreen(),
                      color: Colors.white,
                      fontColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
