import 'package:flutter/material.dart';
import 'package:login_signup/auth_api_service.dart';
import 'package:login_signup/homeScreen.dart';

// Controller class for handling signup logic
class SignupController {
  // Controllers for managing text input from the user
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Instance of ApiService to handle API calls
  final AuthApiService apiService = AuthApiService();

  // Method to handle the signup process
  Future<void> signUp(BuildContext context) async {
    try {
      // Attempt to sign up the user using the provided credentials
      await apiService.signUp(
        usernameController.text,
        emailController.text,
        passwordController.text,
      );
      // Navigate to the login screen upon successful signup
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } catch (e) {
      // Print the error and show a failure message if signup fails
      print(e);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to sign up'),
          ),
        );
      }
    }
  }
}
