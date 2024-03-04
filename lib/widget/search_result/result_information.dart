import 'package:flutter/material.dart';

class Result_information extends StatefulWidget {
  const Result_information({super.key});

  @override
  State<Result_information> createState() => _Result_informationState();
}

class _Result_informationState extends State<Result_information> {
  List<String> information_name = [
    '시간, 자연, 사랑',
    'Exploring The Universe',
    'BVLGARI Colors',
    'The Most Valuables (서울 국제 주얼리 & 액세서리 쇼)'
  ];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        child: Container(
          width: 375,
          margin: EdgeInsets.only(bottom: 30),
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Wrap(
            spacing: 8,
            runSpacing: 20,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
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
                                  'assets/search/information_${i + 1}.png'),
                              fit: BoxFit.cover),
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
                              '디뮤지엄',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' · 서울 성동구',
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
                        height: 4,
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
                              '23.11.18 ~ 24.04.14',
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
                )
            ],
          ),
        ),
      ),
    );
  }
}
