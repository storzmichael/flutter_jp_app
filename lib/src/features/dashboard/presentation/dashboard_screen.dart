import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/card_scroll_view.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/category_scroll_view.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/item_card_big.dart';

class DashboardScreen extends StatelessWidget {
  final double sizeChick = 530;
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrundbild, das den gesamten Bildschirm abdeckt
          Positioned.fill(
            child: Image.asset(
              'assets/background/bg_mainscreen.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: paddingValue),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      'Choose Your Favorite Snack',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CategoryScrollView(),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  const ItemCardBig(),
                  const SizedBox(height: 55),
                  const Text(
                    'We Recommend',
                    style: myTextStyle2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CardScrollView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
