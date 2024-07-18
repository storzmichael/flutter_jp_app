import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final ValueNotifier<List<bool>> isSelected = ValueNotifier<List<bool>>([false, false, true]);

  ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<bool>>(
      valueListenable: isSelected,
      builder: (context, value, child) {
        return Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 47, 45, 45), // Background color of the toggle buttons
            borderRadius: BorderRadius.circular(8), // Rounded corners for the background
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildToggleButton(context, 'Small', 0, value),
              _buildVerticalDivider(),
              _buildToggleButton(context, 'Medium', 1, value),
              _buildVerticalDivider(),
              _buildToggleButton(context, 'Large', 2, value),
            ],
          ),
        );
      },
    );
  }

  Widget _buildToggleButton(BuildContext context, String text, int index, List<bool> value) {
    return GestureDetector(
      onTap: () {
        List<bool> newSelection = [false, false, false];
        newSelection[index] = true;
        isSelected.value = newSelection;
      },
      child: Container(
        height: 25,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: value[index] ? const Color.fromARGB(255, 89, 86, 86) : Colors.transparent,
          borderRadius: value[index] ? BorderRadius.circular(6) : BorderRadius.zero,
        ),
        child: Text(
          text,
          style: TextStyle(color: value[index] ? Colors.white : Colors.grey, fontSize: 10),
        ),
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      width: 0.5, // Width of the vertical line
      height: 20, // Height of the vertical line, shorter than the button height
      color: const Color.fromARGB(255, 89, 86, 86), // Color of the vertical line
      margin: const EdgeInsets.symmetric(vertical: 5), // Add some vertical margin to center the line
    );
  }
}
