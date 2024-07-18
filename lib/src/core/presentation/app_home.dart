import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/features/home/presentation/home_screen.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  } //List of screen from navigation bar

  final List<Widget> screens = [
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeScreen() //screens[currentIndex],
        );
  }
}
