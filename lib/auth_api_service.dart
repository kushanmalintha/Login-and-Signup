import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_signup/user_model.dart';

class AuthApiService {
  static const String _baseUrl =
      'http://192.168.8.153:3000/api/signup'; // Replace with your server URL

  Future<User> signUp(String username, String email, String password) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/signup'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body)['user']);
    } else {
      throw Exception('Failed to sign up');
    }
  }
}
