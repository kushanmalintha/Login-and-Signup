import 'package:flutter/material.dart';
import 'package:login_signup/welcome_screen_body.dart';

// A widget representing the welcome screen of the application
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // The body of the scaffold is set to the WelcomeBody widget
      body: WelcomeBody(),
    );
  }
}
