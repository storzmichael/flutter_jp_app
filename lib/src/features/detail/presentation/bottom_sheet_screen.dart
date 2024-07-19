import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/core/presentation/my_gradient_button_widget.dart';
import 'package:flutter_jp_app/src/features/dashboard/data/gallery_data.dart';
import 'package:flutter_jp_app/src/features/dashboard/domain/gallery_item.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/counter_widget.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/detail_card.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/toggle_button.dart';

class BottomSheetScreen extends StatelessWidget {
  final GalleryItem galleryItem;
  const BottomSheetScreen({super.key, required this.galleryItem});

  @override
  Widget build(BuildContext context) {
    final index = galleryData.indexOf(galleryItem);
    return Container(
      color: Colors.black87,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DetailCard(
                  galleryItem: galleryData[index],
                ),
                const SizedBox(
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ToggleButton(),
                      const CounterWidget(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MyGradientButtonWidget(
                    width: double.infinity,
                    text: 'Add to order ${galleryItem.imagePrice}',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
