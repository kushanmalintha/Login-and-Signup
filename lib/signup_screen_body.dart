import 'package:flutter/material.dart';
import 'package:login_signup/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/round_button.dart';
import 'package:login_signup/textbox.dart';
import 'package:login_signup/signup_controller.dart';

// A widget representing the body of the login screen
class SignupBody extends StatelessWidget {
  // Instance of SignupController to manage signup logic
  final SignupController _signupController = SignupController();

  SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // Use SingleChildScrollView to enable scrolling when the keyboard appears
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // Vertically center the content
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Display the signup icon
              SizedBox(height: size.height * 0.1),
              SvgPicture.asset(
                "assets/icons/login-svgrepo-com.svg",
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.05),
              // Display the username text box
              TextBox(
                  hintText: "Username",
                  type: TextInputType.text,
                  controller: _signupController.usernameController),
              SizedBox(height: size.height * 0.01),
              // Display the email text box
              TextBox(
                  hintText: "Email",
                  type: TextInputType.emailAddress,
                  controller: _signupController.emailController),
              SizedBox(height: size.height * 0.01),
              // Display the password text box
              TextBox(
                  hintText: "Password",
                  type: TextInputType.visiblePassword,
                  controller: _signupController.passwordController),
              SizedBox(height: size.height * 0.03),
              // Display the login button
              RoundButton(
                text: "Signup",
                press: () => _signupController.signUp(context),
                backgroundColor: kPrimaryLightColor,
                foregroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
