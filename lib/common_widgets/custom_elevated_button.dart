import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    required this.child,
    required this.color,
    this.borderRadius: 5.0,
    this.height: 50.0,
    required this.onPressed,
  });
  // properties
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color, // main  button color
          onPrimary: Colors.grey, // overlay haze color (onpress accent)
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
