import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/bottom_sheet_screen.dart';

class ItemCardSmall extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String price;
  final int likeCount;

  const ItemCardSmall(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.price,
      required this.likeCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: 220,
      child: Padding(
        padding: const EdgeInsets.only(right: paddingValue),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              elevation: 1,
              shape: LinearBorder.end(),
              useSafeArea: false,
              context: context,
              builder: (BuildContext context) {
                return const FractionallySizedBox(heightFactor: 0.885, child: BottomSheetScreen());
              },
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cardBorderRadius),
            ),
            color: Colors.transparent, // Transparent color for the Card
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(cardBorderRadius),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 160, 149, 162),
                    Color.fromARGB(255, 101, 72, 209),
                  ], // Change colors as needed
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.all(paddingValue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 160, height: 160, child: Image.asset(imagePath)),
                  const SizedBox(height: 8),
                  Text(
                    name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_border_outlined,
                            color: Color.fromARGB(255, 172, 170, 170),
                            size: 14,
                          ),
                          Text(
                            ' $likeCount',
                            style: const TextStyle(color: Color.fromARGB(255, 172, 170, 170)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
