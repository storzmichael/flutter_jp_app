import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';

class CategoryCardSmallSelected extends StatelessWidget {
  const CategoryCardSmallSelected({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color.fromARGB(255, 250, 213, 246),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardBorderRadius),
        side: BorderSide(
          color: Colors.white.withOpacity(0.4),
          width: widthStroke,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cardBorderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            padding: const EdgeInsets.all(paddingValue),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(cardBorderRadius),
            ),
            child: SizedBox(
              width: 65,
              height: 18,
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
