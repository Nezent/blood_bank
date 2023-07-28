import 'package:blood_bank/views/home_screen.dart';
import 'package:blood_bank/views/login_screen.dart';
import 'package:blood_bank/views/splash_screen.dart';
import 'package:blood_bank/widgets/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Bank',
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.primaryRed),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
