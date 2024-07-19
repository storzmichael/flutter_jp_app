import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/features/dashboard/data/gallery_data.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/item_card_small.dart';

class CardScrollView extends StatelessWidget {
  const CardScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 270.0, // Höhe des Widgets
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: galleryData.length,
          itemBuilder: (context, index) {
            return ItemCardSmall(
              galleryItem: galleryData[index],
            );
          },
        ),
      ),
    );
  }
}
