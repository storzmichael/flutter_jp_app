import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/core/presentation/my_gradient_button_widget.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          // Center-Widget für horizontale Zentrierung
          child: Card(
            elevation: 0,
            color: Colors.transparent,
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
                    width: 400,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Color.fromARGB(255, 172, 170, 170),
                              size: 14,
                            ),
                            Text(
                              ' 200',
                              style: TextStyle(color: Color.fromARGB(255, 172, 170, 170)),
                            )
                          ],
                        ),
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
                          width: double.infinity,
                          text: 'Add to order €8.99',
                          onPressed: () {},
                        ),
                      ],
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
