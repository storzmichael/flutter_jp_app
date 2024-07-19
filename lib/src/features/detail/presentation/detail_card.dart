import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/features/dashboard/domain/gallery_item.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/ingredients.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/reviews.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/rounded_xbutton.dart';

class DetailCard extends StatelessWidget {
  final GalleryItem galleryItem;
  const DetailCard({super.key, required this.galleryItem});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 390;

    return Center(
      // Center-Widget für horizontale Zentrierung
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -160,
            right: -5,
            child: RoundXButton(
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 270,
            left: -10,
            child: SizedBox(
              height: imageSize,
              width: imageSize,
              child: Image.asset(
                galleryItem.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Card(
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
                    width: double.infinity,
                    height: 320,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.favorite_border_outlined,
                                color: Color.fromARGB(255, 172, 170, 170),
                                size: 14,
                              ),
                              Text(
                                ' ${galleryItem.imageLikes}',
                                style: const TextStyle(color: Color.fromARGB(255, 172, 170, 170)),
                              )
                            ],
                          ),
                          Text(
                            galleryItem.imageTitle,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(galleryItem.imagePrice,
                              style:
                                  Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.normal)),
                          const Divider(
                            height: 50,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ingrediants(),
                              Reviews(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
