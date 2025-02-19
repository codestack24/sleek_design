import 'package:flutter/material.dart';
import 'package:sleek_design/screens/splash_screen.dart';
import 'package:sleek_design/themes/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: SplashScreen(),
    );
  }
}