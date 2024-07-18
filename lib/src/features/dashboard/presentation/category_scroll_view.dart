import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/category_card.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/category_card_small.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/category_card_small_selected.dart';

class CategoryScrollView extends StatelessWidget {
  const CategoryScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryCard(),
            CategoryCardSmallSelected(
              name: 'Salty',
            ),
            CategoryCardSmall(
              name: 'Sweet',
            ),
            CategoryCardSmall(
              name: 'Salty',
            ),
          ],
        ),
      ),
    );
  }
}
