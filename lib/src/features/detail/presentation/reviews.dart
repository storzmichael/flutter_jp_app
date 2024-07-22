import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    const double starSize = 20;
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reviews',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
              size: starSize,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
              size: starSize,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
              size: starSize,
            ),
            Icon(
              Icons.star_border,
              color: Colors.white,
              size: starSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '4.0',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
