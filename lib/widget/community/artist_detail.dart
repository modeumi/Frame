import 'package:flutter/material.dart';
import 'package:frame/widget/community_detail_appbar.dart';
import 'package:frame/widget/floatingbutton.dart';

class Artist_Detail extends StatefulWidget {
  const Artist_Detail({super.key});

  @override
  State<Artist_Detail> createState() => _Artist_DetailState();
}

class _Artist_DetailState extends State<Artist_Detail> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 375,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Community_Detail_Appbar(),
          ),
          bottomSheet: FloatingWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 375,
                  height: 346,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 375,
                          height: 332,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 1; i < 4; i++)
                                Image.asset(
                                    'assets/community/artist_banner_$i.png'),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0, // -55
                        left: 34,
                        child: Container(
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/community/artistPhoto 2.png'))),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 6,
                          width: 375,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 1; i < 6; i++)
                                  Container(
                                    width: 6,
                                    height: 6,
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(
                                            i == 1 ? 0xff000000 : 0xFFEBEBEB)),
                                  )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                IntrinsicHeight(
                  child: Container(
                    width: 375,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '기안84',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(right: 4),
                                child: Image.asset(
                                  'assets/community/Home.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(right: 4),
                                child: Image.asset(
                                  'assets/community/Instagram.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  'assets/community/Email.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 8, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        Text(
                          '작가 정보',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 12,
                              height: 16,
                              child: Center(
                                child: Image.asset(
                                    'assets/community/Geography.png'),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(right: 8),
                              child: Text(
                                '국적',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text(
                              '한국',
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
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 12,
                              height: 16,
                              child: Center(
                                child: Image.asset(
                                    'assets/community/Paint Palette.png'),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(right: 8),
                              child: Text(
                                '분야',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text(
                              '회화    만화    팝아트',
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
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 12,
                              height: 16,
                              child: Center(
                                child: Image.asset(
                                    'assets/community/Clipboard List.png'),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(right: 8),
                              child: Text(
                                '경력',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '웹툰',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '2011  - 2013  네이버 웹툰 패션왕 연재',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '2014 - 2021  네이버 웹툰 복학왕 연재',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '2019 - 2019  네이버 웹툰 회춘 연재',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  '전시',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2023',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'TRUE LUXURY with ART',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'World Art Expo in Seoul',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2022',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '스타트 아트페어 런던',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '스타트 아트페어 서울',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '어반브레이크',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '코리아 아트쇼',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'BAMA 기안84 특별전',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '기안84 제1회 개인전 - 풀소유',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        Text(
                          '작품',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Wrap(
                          spacing: 7,
                          runSpacing: 8,
                          children: [
                            for (int i = 1; i < 5; i++)
                              Container(
                                width: 168,
                                height: 168,
                                child: Image.asset(
                                  'assets/community/item_$i.png',
                                  fit: BoxFit.cover,
                                ),
                              )
                          ],
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        Text(
                          '관련 전시',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  width: 375,
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      for (int i = 1; i < 4; i++)
                        Container(
                            margin: EdgeInsets.only(right: i != 3 ? 8 : 0),
                            child:
                                Image.asset('assets/community/perform_$i.png'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
