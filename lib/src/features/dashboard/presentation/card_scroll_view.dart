import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/item_card_small.dart';

class CardScrollView extends StatelessWidget {
  const CardScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ItemCardSmall(
              imagePath: 'assets/grafiken/cat cupcakes_3D.png',
              name: 'Mogli`s Cup',
              description: 'Strawberry ice cream',
              price: '₳8.99',
              likeCount: 200,
            ),
            ItemCardSmall(
              imagePath: 'assets/grafiken/Ice.cream.png',
              name: 'Balu`s Cup',
              description: 'Pistachio ice cream',
              price: '₳8.99',
              likeCount: 100,
            ),
          ],
        ),
      ),
    );
  }
}
