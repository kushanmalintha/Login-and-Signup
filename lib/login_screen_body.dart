import 'package:flutter/material.dart';
import 'package:login_signup/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/round_button.dart';
import 'package:login_signup/textbox.dart';

// A widget representing the body of the login screen
class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

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
              // Display the login icon
              SizedBox(height: size.height * 0.1),
              SvgPicture.asset(
                "assets/icons/login-svgrepo-com.svg",
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.05),
              // Display the username text box
              const TextBox(
                hintText: "Email",
                type: TextInputType.emailAddress,
              ),
              SizedBox(height: size.height * 0.01),
              // Display the password text box
              const TextBox(
                hintText: "Password",
                type: TextInputType.visiblePassword,
              ),
              SizedBox(height: size.height * 0.03),
              // Display the login button
              RoundButton(
                text: "Login",
                press: () {
                  // Add login function
                },
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
