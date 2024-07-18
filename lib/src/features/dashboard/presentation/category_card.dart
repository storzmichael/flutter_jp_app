import 'dart:ui';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

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
            child: const SizedBox(
              width: 125,
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SFIcon(
                    SFIcons.sf_takeoutbag_and_cup_and_straw,
                    fontSize: 10, // fontSize instead of size
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'All categories',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
