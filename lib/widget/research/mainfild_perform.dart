import 'package:flutter/material.dart';
import 'package:frame/widget/community/performance_detail.dart';

class Mainfild_Perfomance extends StatefulWidget {
  const Mainfild_Perfomance({super.key});

  @override
  State<Mainfild_Perfomance> createState() => _Mainfild_PerfomanceState();
}

class _Mainfild_PerfomanceState extends State<Mainfild_Perfomance> {
  List<String> information_name = [
    'MSCHF: NOTHING ISSACRED',
    'Christopher Bauder : WINTERLIGHTS',
    '시간, 자연, 사랑',
    'EXPLORING THE UNIVERSE'
  ];
  List<String> place_name = ['대림미술관', '서울숲 가족마당', '디뮤지엄', '서울숲 가족마당'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: 24,
                bottom: 8,
              ),
              child: Text(
                '게시글과 관련된 전시',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Performance_Detail(),
                            ));
                      },
                      child: Container(
                        width: 167.5,
                        height: 365,
                        margin: EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 168,
                              height: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/mypage/perform_${i + 1}.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/mypage/Favorite.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  information_name[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Spacer(),
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
                                    place_name[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    i == 0 ? ' · 서울 종로구' : ' · 서울 성동구',
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
                                    i == 0
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
                              height: 12,
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
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
