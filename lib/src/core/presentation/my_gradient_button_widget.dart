import 'package:flutter/material.dart';

class MyGradientButtonWidget extends StatelessWidget {
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final double borderStroke;

  const MyGradientButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.borderStroke = 1,
    this.width,
    this.height = 47.0,
    this.gradient = const LinearGradient(
      colors: [
        Color.fromARGB(255, 240, 105, 204),
        Color.fromARGB(255, 255, 168, 168),
      ],
    ),
  });

  @override
  Widget build(BuildContext context) {
    final double _borderRadius = 8;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(_borderRadius),
        boxShadow: const [
          // BoxShadow(
          //     blurStyle: BlurStyle.inner,
          //     blurRadius: 10,
          //     color: Colors.white,
          //     spreadRadius: -10,
          //     offset: Offset(3, 3)),
          BoxShadow(blurRadius: 22, color: Color.fromARGB(150, 230, 121, 185), spreadRadius: 1, offset: Offset(-1, 9)),
        ],
        border: Border.all(
          color: const Color.fromARGB(255, 230, 121, 185),
          width: borderStroke,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
          padding: const EdgeInsets.all(0),
        ),
        child: Text(text),
      ),
    );
  }
}
