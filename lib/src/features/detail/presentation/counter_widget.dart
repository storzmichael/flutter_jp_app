import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildCounterButton(Icons.remove, _decrementCounter),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '$_counter',
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        _buildCounterButton(Icons.add, _incrementCounter),
      ],
    );
  }

  Widget _buildCounterButton(IconData icon, VoidCallback onPressed) {
    const double buttonSize = 30;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonSize, // Set the width of the button
        height: buttonSize, // Set the height of the button
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 47, 45, 45),
          border: Border.all(
            color: Colors.grey, // Outline color
            width: 0.5, // Outline width
          ),
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
