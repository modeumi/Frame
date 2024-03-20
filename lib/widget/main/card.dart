import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

void main() => runApp(CardWidget());

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int _currntIndexPage = 0;
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  final List<Map<String, String>> _slides = [
    {
      'image': 'assets/main/20231112_141636 1.png',
      'title': 'NOTHING IS SACRED',
      'location': '대림미술관 · 서울 종로구'
    },
    {
      'image': 'assets/main/IMG_0644.jpg',
    },
    {
      'image': 'assets/main/IMG_0643.jpg',
    },
    {
      'image': 'assets/main/IMG_0642.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: _slides.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currntIndexPage = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    _slides[index]['image']!,
                    fit: BoxFit.cover,
                  );
                },
              )),
          Positioned(
            bottom: 55,
            left: 43,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: DotsIndicator(
              // decorator: DotsDecorator(color: Colors.black),
              dotsCount: _slides.length,
              position: _currntIndexPage,
            ),
          ),
        ]),
      ),
    );
  }

  _buildPageView() {
    return PageView.builder(
        itemCount: _slides.length,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {},
        onPageChanged: (int index) {
          _currentPageNotifier.value = index;
        });
  }
}
