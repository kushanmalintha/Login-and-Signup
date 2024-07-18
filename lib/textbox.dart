import 'package:flutter/material.dart';

// A custom text box widget
class TextBox extends StatelessWidget {
  // Hint text to be displayed inside the text box
  final String hintText;
  // Keyboard type for the text box (e.g., text, number, email, etc.)
  final TextInputType type;
  // TextEditingController for the text box
  final TextEditingController controller;

  // Constructor to initialize hintText and type
  const TextBox(
      {super.key,
      required this.hintText,
      required this.type,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Set the height of the text box
      height: 50,
      // Set the width of the text box
      width: 350,
      child: TextField(
        controller: controller,
        // Set the keyboard type for the text box
        keyboardType: type,
        // Define the decoration for the text box
        decoration: InputDecoration(
          // Set the border style for the text box
          border: const OutlineInputBorder(),
          // Set the hint text to be displayed inside the text box
          hintText: hintText,
          /* Uncomment and adjust padding if needed
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 100), */
        ),
      ),
    );
  }
}
