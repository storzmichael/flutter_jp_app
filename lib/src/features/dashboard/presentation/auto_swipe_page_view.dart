import 'package:flutter/material.dart';
import 'package:flutter_jp_app/src/features/dashboard/data/gallery_data.dart';
import 'package:flutter_jp_app/src/features/dashboard/presentation/item_card_big.dart';

class AutoSwipePageView extends StatefulWidget {
  const AutoSwipePageView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AutoSwipePageViewState createState() => _AutoSwipePageViewState();
}

class _AutoSwipePageViewState extends State<AutoSwipePageView> {
  final PageController _pageController = PageController();
  final Duration _animationDuration = const Duration(seconds: 1); // Dauer der Animation
  final Duration _delay = const Duration(seconds: 5); // Dauer des Verweilens auf jeder Seite
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSwipe();
  }

  void _startAutoSwipe() {
    Future.delayed(_delay, () {
      if (_pageController.hasClients) {
        setState(() {
          _currentPage++;
        });
        _pageController
            .animateToPage(
          _currentPage,
          duration: _animationDuration,
          curve: Curves.easeInOut,
        )
            .then((_) {
          if (_currentPage == galleryData.length) {
            _pageController.jumpToPage(0);
            setState(() {
              _currentPage = 0;
            });
          }
          _startAutoSwipe();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290, // Höhe des Containers für die Karten
      child: PageView.builder(
        controller: _pageController,
        itemCount: galleryData.length + 1, // Anzahl der Karten + 1
        itemBuilder: (context, index) {
          if (index == galleryData.length) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ItemCardBig(galleryItem: galleryData[0]), // Erste Karte als Kopie
            );
          }
          final item = galleryData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ItemCardBig(galleryItem: item),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
