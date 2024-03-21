import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainFild extends StatefulWidget {
  const MainFild({super.key});

  @override
  State<MainFild> createState() => _MainFildState();
}

class _MainFildState extends State<MainFild> {
  bool _showImage = false;

  int PageLength = 4;

  final PageController _controller = PageController();

  final List<String> imageAsets = [
    'assets/main/Frame.png',
    'assets/main/image1.png',
    'assets/main/image2.png',
    'assets/main/image3.png',
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
              Spacer(),
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
          Container(
            height: 497,
            child: PageView.builder(
                controller: _controller,
                itemCount: imageAsets.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          _showImage = !_showImage;
                        });
                      },
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              imageAsets[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 48,
                            bottom: 190,
                            child: Visibility(
                                visible: _showImage && index == 0,
                                child: Image.asset(
                                    'assets/main/Group 1437256362.png')),
                          )
                        ],
                      ));
                }),
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
                SizedBox(
                  width: 43,
                ),
                DotsIndicator(
                  dotsCount: imageAsets.length,
                  position: _currentPage,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                      size: Size(6, 6),
                      activeSize: Size(6, 6),
                      spacing: EdgeInsets.only(right: 6)),
                )
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
            child: Row(
              children: [
                Image.asset(
                  'assets/research/profile_b_3.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Sa_rang  기대하고 있는 전시였는데 이거보고 더 가고 싶어졌어요.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 4),
            child: Row(
              children: [
                SvgPicture.asset('assets/research/Vector 7.svg'),
                Image.asset(
                  'assets/research/profile_b_1.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Seo_yeon  네 저도 기회가되면 다시 가고 싶습니다!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                Image.asset(
                  'assets/research/profile_b_4.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Mirr_  저도 너무 재밌게 보고 온 전시였어요!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
            child: Row(
              children: [
                SvgPicture.asset('assets/research/Vector 7.svg'),
                Image.asset(
                  'assets/research/profile_b_1.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Seo_yeon  네 저도 기회가되면 다시 가고 싶습니다!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Stack(children: [
                Container(
                  width: 375,
                  height: 72,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 1,
                        offset: Offset(0, -1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 5,
                  child: Container(
                    width: 343,
                    height: 36,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: InputBorder.none,
                          hintText: '댓글을 입력해주세요',
                          hintStyle: TextStyle(
                            color: Color(0xFF767676),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                          fillColor: Color(0x19000000),
                          filled: true),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 25,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black),
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 27,
                  child: Image.asset(
                    'assets/research/Send Letter.png',
                    width: 10,
                  ),
                )
              ])),
        ],
      ),
    );
  }
}
