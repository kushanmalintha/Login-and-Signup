import 'package:flutter/material.dart';
import 'package:login_signup/constant.dart';
import 'package:login_signup/welcome_screen.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

// The root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Builds the root widget of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hides the debug banner
      debugShowCheckedModeBanner: false,
      // Title of the application
      title: 'Login&Signup',
      // Defines the theme of the application
      theme: ThemeData(
        // Primary color used throughout the application
        primaryColor: kPrimaryColor,
        // Background color for Scaffold widgets
        scaffoldBackgroundColor: Colors.white,
      ),
      // Sets the home screen of the application to WelcomeScreen
      home: const WelcomeScreen(),
    );
  }
}
