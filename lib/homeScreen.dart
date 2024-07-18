import 'package:flutter/material.dart';

// A widget representing the login screen of the application
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Define the app bar for the home screen
      appBar: AppBar(
        title: const Text('Home Page'), // Title of the app bar
      ),
    );
  }
}
