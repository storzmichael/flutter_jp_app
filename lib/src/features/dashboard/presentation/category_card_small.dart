import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';

class CategoryCardSmall extends StatelessWidget {
  const CategoryCardSmall({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white30,
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
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
