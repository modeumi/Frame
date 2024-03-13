import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Popularity extends StatefulWidget {
  const Popularity({super.key});

  @override
  State<Popularity> createState() => _PopularityState();
}

class _PopularityState extends State<Popularity> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Image.asset(
                  'assets/community/Ellipse 125.png',
                  width: 25,
                  height: 25,
                ),
              ),
              Text(
                'Seo_yeon',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 180,
              ),
              Container(
                  width: 64,
                  height: 26,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDDDDDD)),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        text: '+ ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '팔로우',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Image.asset(
                'assets/mypage/Menu Vertical.png',
              )
            ],
          ),
          Stack(
            children: [
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
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image.asset('assets/main/Pin.png'),
                SizedBox(
                  width: 12,
                ),
                Image.asset('assets/main/Speech Bubble.png'),
                SizedBox(
                  width: 12,
                ),
                Image.asset('assets/main/Share.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text('Sa_rang님 외 30명이 핀했습니다',
                style: TextStyle(
                  color: Color(0xFF767676),
                  fontSize: 10,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                  height: 0,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Seo_yeon  드디어 기대하던 미스치프 전시를 보고 왔습니다!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              '댓글 모두 보기',
              style: TextStyle(
                color: Color(0xFF767676),
                fontSize: 10,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              'Sa_rang  기대하고 있는 전시였는데 이거보고 더 가고 싶어졌어요.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              'Mirr_  저도 너무 재밌게 보고 온 전시였어요!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Image.asset(
                  'assets/main/Ellipse 119.png',
                  width: 25,
                  height: 25,
                ),
              ),
              Text(
                'Seo_yeon',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 180,
              ),
              Container(
                  width: 64,
                  height: 26,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDDDDDD)),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        text: '+ ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '팔로우',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Image.asset(
                'assets/mypage/Menu Vertical.png',
              )
            ],
          ),
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/main/20231216_172656 1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 191,
                right: 48,
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
                top: 210,
                right: 50,
                child: SvgPicture.asset('assets/main/Union1.svg'),
              ),
              Positioned(
                  bottom: 145,
                  right: 75,
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
                  bottom: 130,
                  right: 94,
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
                  bottom: 135,
                  right: 54,
                  child: Image.asset('assets/main/Forward.png')),
              Positioned(
                bottom: 121,
                left: 142,
                child: Image.asset(
                    'assets/main/Screenshot_20240202_153830_Chrome.png'),
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
                final containerWidth = index == 4
                    ? 102
                    : [71, 61, 71, 61, 61, 102][index].toDouble();
                return Positioned(
                  bottom: 10,
                  left: left,
                  child: Container(
                    width: containerWidth.toDouble(),
                    height: 31,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFECECEC)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        ['#쥬얼리', '#보석', '#전시회', '#패션', '#반클리프아펠'][index],
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  '작품명 : 버드 오브 파라다이스 \n감상평 : 사파이어,루비 등 보석으로 자연을 표현하는 메종의 깊은 애정이 느껴지는 작품이였다. ',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image.asset('assets/main/Pin.png'),
                SizedBox(
                  width: 12,
                ),
                Image.asset('assets/main/Speech Bubble.png'),
                SizedBox(
                  width: 12,
                ),
                Image.asset('assets/main/Share.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text('Seo_yeon님 외 20명이 핀했습니다',
                style: TextStyle(
                  color: Color(0xFF767676),
                  fontSize: 10,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                  height: 0,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Garam_  반클리프아펠의 역사가 보이는 전시였습니다!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              '댓글 모두 보기',
              style: TextStyle(
                color: Color(0xFF767676),
                fontSize: 10,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              'Budeul_  사진으로 보니 또 색다른 매력이 있는거 같아요',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              'Seo_yeon  가이드가 따로 있나요?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
