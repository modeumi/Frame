import 'package:flutter/material.dart';
import 'package:frame/widget/community/performance_detail.dart';

class Like_Perfomance extends StatefulWidget {
  const Like_Perfomance({super.key});

  @override
  State<Like_Perfomance> createState() => _Like_PerfomanceState();
}

class _Like_PerfomanceState extends State<Like_Perfomance> {
  List<String> information_name = [
    'MSCHF: NOTHING ISSACRED',
    'Christopher Bauder : WINTERLIGHTS',
    '시간, 자연, 사랑',
    'Christopher Bauder : WINTERLIGHTS'
  ];
  List<String> place_name = ['대림미술관', '서울숲 가족마당', '디뮤지엄', '서울숲 가족마당'];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 375,
        margin: EdgeInsets.only(bottom: 30),
        child: Wrap(
          spacing: 8,
          runSpacing: 20,
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
                                    'assets/mypage/Heart.png',
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
    );
  }
}
