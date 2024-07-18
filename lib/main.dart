import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/config/theme_data.dart';
import 'package:flutter_jp_app/src/core/presentation/app_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: const AppHome(),
    );
  }
}
