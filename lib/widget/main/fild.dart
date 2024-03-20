import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FildWidget extends StatefulWidget {
  const FildWidget({super.key});

  @override
  State<FildWidget> createState() => _FildWidgetState();
}

class _FildWidgetState extends State<FildWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            // PageView.builder(
            //     itemCount: _slides.length,
            //     onPageChanged: (int index) {
            //       setState(() {
            //         _currntIndexPage = index;
            //       });
            //     },
            //     itemBuilder: (BuildContext context, int index) {
            //       return Image.asset(
            //         _slides[index]['images']!,
            //         fit: BoxFit.cover,
            //       );
            //     }),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/main/20231112_141636 1.png',
                fit: BoxFit.cover,
              ),
            ),
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
            Positioned(
              bottom: 70,
              left: 48,
              child: ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: SvgPicture.asset('assets/main/Union.svg')),
              ),
            ),
            Positioned(
                bottom: 110,
                left: 110,
                child: Text(
                  'NOTHING IS SACRED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                )),
            Positioned(
                bottom: 93,
                left: 110,
                child: Text(
                  '대림미술관 · 서울 종로구',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                )),
            Positioned(
                bottom: 100,
                right: 142,
                child: Image.asset('assets/main/Forward.png')),
            Positioned(
              bottom: 85,
              left: 52,
              child:
                  Image.asset('assets/main/3627468_16971960998015_big 1.png'),
            ),
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
            ...List.generate(5, (index) {
              final mediaQuery = MediaQuery.of(context);
              double? left;
              if (index == 0) {
                left = 10;
              } else if (index == 1) {
                left = 90;
              } else if (index == 2) {
                left = mediaQuery.size.width - 233;
              } else if (index == 3) {
                left = mediaQuery.size.width - 153;
              } else if (index == 4) {
                left = mediaQuery.size.width - 83;
              }

              return Positioned(
                bottom: 10,
                left: left,
                child: Container(
                  width: [71, 61, 71, 61, 81][index].toDouble(),
                  height: 31,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFECECEC)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      ['#미술관', '#전시', '#전시회', '#패션', '#미스치프'][index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            })
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Center(
          child: Container(
            width: 359,
            height: 84,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x26000000).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(
                        0,
                        1,
                      ))
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              child: Text(
                '루카스벤텔의 한마디가 전시의 기대감을 올려주었다.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
