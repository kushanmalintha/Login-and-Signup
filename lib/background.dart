import 'package:flutter/material.dart';

// A widget that places a background with two purple balls and a child widget on top
class Background extends StatelessWidget {
  // The child widget to be displayed on top of the background
  final Widget child;

  // Constructor to initialize the child widget
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      // Set the height of the SizedBox to the height of the screen
      height: size.height,
      // Set the width of the SizedBox to occupy the full width of the screen
      width: double.infinity,
      // Use a Stack to layer the background images and the child widget
      child: Stack(
        children: <Widget>[
          // Place the purple ball image at the top left of the screen
          Positioned(
            top: -180,
            left: -180,
            child: Image.asset(
              "assets/images/purpleball.png",
              width: size.width * 0.8,
            ),
          ),
          // Place the purple ball image at the bottom right of the screen
          Positioned(
            bottom: -180,
            right: -180,
            child: Image.asset(
              "assets/images/purpleball.png",
              width: size.width * 0.8,
            ),
          ),
          // Place the child widget on top of the background
          child,
        ],
      ),
    );
  }
}
