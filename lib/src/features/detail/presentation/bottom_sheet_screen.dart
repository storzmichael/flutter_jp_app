import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/core/presentation/my_gradient_button_widget.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/counter_widget.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/detail_card.dart';
import 'package:flutter_jp_app/src/features/detail/presentation/toggle_button.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const DetailCard(),
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
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MyGradientButtonWidget(width: double.infinity, text: 'Add to order ₳8.99', onPressed: () {}),
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
