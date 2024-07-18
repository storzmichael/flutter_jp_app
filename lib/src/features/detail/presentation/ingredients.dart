import 'package:flutter/material.dart';

class Ingrediants extends StatelessWidget {
  const Ingrediants({super.key});

  @override
  Widget build(BuildContext context) {
    const double ingradientsSize = 20;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ingredients',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              height: ingradientsSize,
              width: ingradientsSize,
              child: Image.asset(
                'assets/snackish_ingredient_icons/gluten_icon.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: ingradientsSize,
              width: ingradientsSize,
              child: Image.asset(
                'assets/snackish_ingredient_icons/sugar_icon.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: ingradientsSize,
              width: ingradientsSize,
              child: Image.asset(
                'assets/snackish_ingredient_icons/lowfat_icon.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: ingradientsSize,
              width: ingradientsSize,
              child: Image.asset(
                'assets/snackish_ingredient_icons/kcal_icon.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
