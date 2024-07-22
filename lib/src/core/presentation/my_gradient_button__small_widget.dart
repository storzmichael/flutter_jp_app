import 'package:flutter/material.dart';

class MyGradientButtonSmallWidget extends StatelessWidget {
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final double borderStroke;

  const MyGradientButtonSmallWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.borderStroke = 0.5,
    this.width = 113,
    this.height = 40.0,
    this.gradient = const LinearGradient(
      colors: [
        Color(0xFFB582DE), // Hexcode for color #A095A2
        Color(0xFF8D81F2), // Hexcode for color #6548D1
      ],
    ),
  });

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 8;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
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
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.all(0),
        ),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
