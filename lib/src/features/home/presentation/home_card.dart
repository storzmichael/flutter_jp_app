import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/core/presentation/my_gradient_button_widget.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/dashboard_screen.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset('assets/detail/T2.png'),
        ),
        Positioned(
          bottom: -8,
          left: 0,
          right: 0,
          child: Center(
            // Center-Widget für horizontale Zentrierung
            child: Card(
              elevation: 0,
              color: cardPaint,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cardBorderRadius),
                side: BorderSide(
                  color: Colors.white.withOpacity(0.15),
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
                      width: 320,
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Feeling Snackish Today?',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 8),
                          const Padding(
                            padding: EdgeInsets.all(paddingValue),
                            child: Text(
                              'Explore Angi`s most popular snack selection and get instantly happy.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 8),
                          MyGradientButtonWidget(
                            width: 180,
                            text: 'Oder now',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const DashboardScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
