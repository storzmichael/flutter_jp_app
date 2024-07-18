import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';

class CategoryButton extends StatelessWidget {
  final String bttnText;
  const CategoryButton({super.key, required this.bttnText});

  @override
  Widget build(BuildContext context) {
    // Definiere eine Farbe mit Transparenz (z.B. 80% Transparenz)
    Color backgroundColor = Colors.black.withOpacity(0.8);

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        bttnText,
        style: bttnCategory,
      ),
    );
  }
}
