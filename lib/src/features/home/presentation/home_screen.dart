import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/features/home/presentation/home_card.dart';

class HomeScreen extends StatelessWidget {
  final double sizeChick = 530;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrundbild, das den gesamten Bildschirm abdeckt
          Positioned.fill(
            child: Image.asset(
              'assets/background/bg_startscreen.png',
              fit: BoxFit.cover,
            ),
          ),
          // Chick Cupcake Bild
          Positioned(
            top: 100,
            left: -20,
            child: SizedBox(
              height: sizeChick,
              width: sizeChick,
              child: Image.asset(
                'assets/grafiken/chick cupcakes_3D.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // HomeCard Widget horizontal zentrieren
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: HomeCard(),
            ),
          ),
        ],
      ),
    );
  }
}
