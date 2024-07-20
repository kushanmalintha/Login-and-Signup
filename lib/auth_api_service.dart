import 'dart:convert'; // Import Dart's JSON encoding and decoding utilities
import 'package:http/http.dart'
    as http; // Import the http package for making HTTP requests
import 'package:login_signup/user_model.dart'; // Import the User model

class AuthApiService {
  static const String _baseUrl =
      'http://192.168.164.9:3000/api/auth'; // Base URL for the API (replace with your server URL)

  // Method to handle user sign-up
  Future<User> signUp(String username, String email, String password) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/signup'), // Endpoint for sign-up
      headers: {
        'Content-Type': 'application/json'
      }, // Set the content type to JSON
      body: jsonEncode({
        'username': username, // Username for the new user
        'email': email, // Email for the new user
        'password': password, // Password for the new user
      }),
    );

    if (response.statusCode == 201) {
      // Check if the sign-up was successful (HTTP 201 Created)
      // Parse and return the user object from the response body
      return User.fromJson(jsonDecode(response.body)['user']);
    } else {
      // Throw an exception if the sign-up failed
      throw Exception('Failed to sign up');
    }
  }

  // Method to handle user login
  Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/login'), // Endpoint for login
      headers: {
        'Content-Type': 'application/json'
      }, // Set the content type to JSON
      body: jsonEncode({
        'email': email, // Email for the user logging in
        'password': password, // Password for the user logging in
      }),
    );

    if (response.statusCode == 200) {
      // Check if the login was successful (HTTP 200 OK)
      // Return the token or other relevant information from the response body
      return jsonDecode(response.body).toString();
    } else {
      // Throw an exception if the login failed
      throw Exception('Failed to login');
    }
  }
}
