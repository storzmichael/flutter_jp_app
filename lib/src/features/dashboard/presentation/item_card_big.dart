import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/core/presentation/gradiant_button_small.dart';

class ItemCardBig extends StatelessWidget {
  const ItemCardBig({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: paddingValue),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: CardClipper(),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
              child: CustomPaint(
                painter: CardOutlinePainter(),
                child: Container(
                  width: double.infinity,
                  height: 235,
                  decoration: const BoxDecoration(
                    color: cardPaint,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: -5,
            child: Image.asset('assets/grafiken/Burger_3D.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Angi`s Yummy Burger', style: myTextStyle2),
                    Row(
                      children: [
                        Image.asset('assets/grafiken/star.png'),
                        const Text(
                          ' 4.8',
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 140,
                  child: Text(
                    'Delish vegan burger that tastes like heaven',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '€ 13.99',
                  style: myTextStyle2,
                ),
                const SizedBox(
                  height: 50,
                ),
                GradientButtonSmall(
                  width: 113,
                  height: 40,
                  text: 'Add to order',
                  onPressed: () {},
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB582DE), // Hexcode for color #A095A2
                      Color(0xFF8D81F2), // Hexcode for color #6548D1
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(30, 0) // Startpunkt oben links, etwas nach rechts verschoben
      ..lineTo(size.width - 30, 0) // Linie nach rechts oben, etwas nach links verschoben
      ..quadraticBezierTo(size.width, 0, size.width, 30) // obere rechte Ecke
      ..lineTo(size.width, size.height - 50) // Linie nach unten zur kürzeren rechten Seite
      ..quadraticBezierTo(size.width, size.height - 20, size.width - 30, size.height - 20) // untere rechte Ecke
      ..lineTo(30, size.height) // Linie nach links unten
      ..quadraticBezierTo(0, size.height, 0, size.height - 30) // untere linke Ecke
      ..lineTo(0, 30) // Linie nach oben zur linken Seite
      ..quadraticBezierTo(0, 0, 30, 0); // obere linke Ecke

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CardOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.2) // Farbe der Outline
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke; // Breite der Outline

    final path = Path()
      ..moveTo(30, 0) // Startpunkt oben links, etwas nach rechts verschoben
      ..lineTo(size.width - 30, 0) // Linie nach rechts oben, etwas nach links verschoben
      ..quadraticBezierTo(size.width, 0, size.width, 30) // obere rechte Ecke
      ..lineTo(size.width, size.height - 50) // Linie nach unten zur kürzeren rechten Seite
      ..quadraticBezierTo(size.width, size.height - 20, size.width - 30, size.height - 20) // untere rechte Ecke
      ..lineTo(30, size.height) // Linie nach links unten
      ..quadraticBezierTo(0, size.height, 0, size.height - 30) // untere linke Ecke
      ..lineTo(0, 30) // Linie nach oben zur linken Seite
      ..quadraticBezierTo(0, 0, 30, 0); // obere linke Ecke

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
