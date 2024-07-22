import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/config.dart';
import 'package:flutter_jp_app/src/features/dashboard/data/gallery_data.dart';
import 'package:flutter_jp_app/src/features/dashboard/domain/gallery_item.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/bottom_sheet_screen.dart';

class ItemCardSmall extends StatelessWidget {
  final GalleryItem galleryItem;

  const ItemCardSmall({super.key, required this.galleryItem});

  @override
  Widget build(BuildContext context) {
    final index = galleryData.indexOf(galleryItem);
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
                return FractionallySizedBox(
                  heightFactor: 0.885,
                  child: BottomSheetScreen(
                    galleryItem: galleryData[index],
                  ),
                );
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
                  SizedBox(width: 160, height: 160, child: Image.asset(galleryItem.imagePath)),
                  const SizedBox(height: 8),
                  Text(
                    galleryItem.imageTitle,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    galleryItem.imageDescription,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis, // Hier wird der Text abgeschnitten
                    maxLines: 1, // Maximale Anzahl von Zeilen
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(galleryItem.imagePrice, style: textPrice.copyWith(fontWeight: FontWeight.normal)),
                      Row(
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
