import 'package:flutter/material.dart';
import 'package:login_signup/signup_screen_body.dart';

// A widget representing the login screen of the application
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Define the app bar for the login screen
      appBar: AppBar(
        title: const Text('Sign up'), // Title of the app bar
      ),
      // Set the body of the scaffold to display the LoginBody widget
      body: const SignupBody(),
    );
  }
}
