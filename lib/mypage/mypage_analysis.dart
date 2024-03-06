import 'package:flutter/material.dart';

class MyPage_Analysis extends StatefulWidget {
  const MyPage_Analysis({super.key});

  @override
  State<MyPage_Analysis> createState() => _MyPage_AnalysisState();
}

class _MyPage_AnalysisState extends State<MyPage_Analysis> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              '취향분석',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 624,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '기록 분석',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                IntrinsicWidth(
                  child: Container(
                    height: 13,
                    color: Color(0xFFE0B974),
                    child: Text(
                      '확고한 ‘#전시’파 이시군요!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/mypage/graph.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE0B974),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            IntrinsicWidth(
                              child: Container(
                                height: 28,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xFFECECEC)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    '#전시',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF767676),
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE0B974),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            IntrinsicWidth(
                              child: Container(
                                height: 28,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xFFECECEC)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    '#회화',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF767676),
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE0B974),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            IntrinsicWidth(
                              child: Container(
                                height: 28,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xFFECECEC)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    '#무료',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF767676),
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE0B974),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            IntrinsicWidth(
                              child: Container(
                                height: 28,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xFFECECEC)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    '#사진전',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF767676),
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  '추천 전시',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    for (int i = 1; i < 3; i++)
                      Container(
                        width: 151,
                        height: 326,
                        margin: EdgeInsets.only(right: i == 1 ? 7 : 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 151,
                              height: 217,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/mypage/perform_$i.png'))),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              i == 1
                                  ? 'MSCHF: NOTHING ISSACRED'
                                  : 'Christopher Bauder : WINTERLIGHTS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.47,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              height: 12,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/search/Location.png',
                                    width: 12,
                                    height: 12,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    i == 1 ? '대림미술관' : '서울숲 가족마당',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    i == 1 ? ' · 서울 종로구' : ' · 서울 성동구',
                                    style: TextStyle(
                                      color: Color(0xFF767676),
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 12,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/search/Calendar.png',
                                    width: 12,
                                    height: 12,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    i == 1
                                        ? '23.11.10  ~  24.03.31'
                                        : '23.11.18 ~ 24.04.14',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              '유료',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
