import 'package:flutter/material.dart';
import 'package:login_signup/auth_api_service.dart';
import 'package:login_signup/homeScreen.dart';

// Controller class for handling login logic
class LoginController {
  // Controllers for managing text input from the user
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Instance of ApiService to handle API calls
  final AuthApiService apiService = AuthApiService();

  // Method to handle the login process
  Future<void> login(BuildContext context) async {
    try {
      // Attempt to log in the user using the provided credentials
      await apiService.login(
        emailController.text,
        passwordController.text,
      );
      // Navigate to the main screen upon successful login
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } catch (e) {
      // Print the error and show a failure message if login fails
      print(e);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to log in')),
        );
      }
    }
  }
}
