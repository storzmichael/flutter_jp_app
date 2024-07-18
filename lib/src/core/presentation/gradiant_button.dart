import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final double? width;
  final double? height;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFE665BC), // Entspricht der linken Farbseite des Verlaufs
              Color(0xFFF5919C), // Entspricht der rechten Farbseite des Verlaufs
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 251, 122, 165).withOpacity(0.6),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 3), // Positionierung des Schattens
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(
            minWidth: width ?? 88.0,
            minHeight: height ?? 36.0,
            maxWidth: width ?? double.infinity,
            maxHeight: height ?? double.infinity,
          ),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
