import 'package:flutter/material.dart';
import 'package:login_signup/background.dart';
import 'package:login_signup/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/login_screen.dart';
import 'package:login_signup/round_button.dart';

// A widget representing the body of the welcome screen
class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size size = MediaQuery.of(context).size;
    // This size provides us total height and width of our screen
    return Background(
      // The Background widget provides the backdrop for the WelcomeBody
      child: Center(
        // Center the contents of the Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the welcome text
            const Text(
              "WELCOME TO BOOKWALLET",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: kPrimaryColor,
              ),
            ),
            // Add a vertical space
            SizedBox(height: size.height * 0.05),
            // Display an SVG image
            SvgPicture.asset(
              "assets/icons/books-svgrepo-com.svg",
              height: size.height * 0.3,
            ),
            // Add a vertical space
            SizedBox(height: size.height * 0.05),
            // Display the login button
            RoundButton(
              text: "LOGIN",
              press: () {
                // Navigate to the login screen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
            ),
            // Add a small vertical space
            SizedBox(height: size.height * 0.005),
            // Display the signup button
            RoundButton(
              text: "SIGNUP",
              press: () {
                // Add signup function
              },
              backgroundColor: kPrimaryLightColor,
              foregroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
