import 'package:flutter/material.dart';

class RoundXButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RoundXButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    const double buttonSize = 30;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonSize, // Set the width of the button
        height: buttonSize, // Set the height of the button
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 47, 45, 45),
          border: Border.all(
            color: Colors.grey, // Outline color
            width: 0.5, // Outline width
          ),
        ),
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    );
  }
}
