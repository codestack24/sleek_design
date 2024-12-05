import 'package:flutter/material.dart';
import 'package:sleek_design/widgets/custom_scaffold.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Text("Forgot Password"),
    );
  }
}