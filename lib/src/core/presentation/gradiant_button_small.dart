import 'package:flutter/material.dart';

class GradientButtonSmall extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Gradient gradient;
  final double? width;
  final double? height;

  const GradientButtonSmall({
    super.key,
    required this.text,
    required this.onPressed,
    required this.gradient,
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
          gradient: gradient,
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
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
