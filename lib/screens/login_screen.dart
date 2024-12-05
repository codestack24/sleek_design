import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sleek_design/screens/forgot_password_screen.dart';
import 'package:sleek_design/screens/signup_screen.dart';
import 'package:sleek_design/themes/theme.dart';
import 'package:sleek_design/widgets/custom_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formLoginInKey = GlobalKey<FormState>();
  bool rememberPassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 200),
                child: Form(
                  key: _formLoginInKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: lightColorScheme.primary,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: Text("Email"),
                              hintText: "Enter Email",
                              hintStyle: TextStyle(color: Colors.black26),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black12))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: Text("Password"),
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.black26),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black12))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: rememberPassword,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      rememberPassword = value!;
                                    });
                                  },
                                  activeColor: lightColorScheme.primary,
                                ),
                                Text(
                                  "Remember me",
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (e) => ForgotPasswordScreen()));
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: lightColorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            
                            onPressed: () {
                              if (_formLoginInKey.currentState!.validate() &&
                                  rememberPassword) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Processing Data'),
                                  ),
                                );
                              } else if (!rememberPassword) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Please agree to the processing of personal data')),
                                );
                              }
                            },
                            child: const Text('Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 10,
                              ),
                              child: Text(
                                'Sign up with',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Logo(Logos.facebook_f),
                            Logo(Logos.twitter),
                            Logo(Logos.google),
                            Logo(Logos.apple),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        // don't have an account
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account? ',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (e) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: lightColorScheme.primary,
                                  ),
                                ))
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
