import 'package:flutter/material.dart';

class Map_Result_information extends StatefulWidget {
  const Map_Result_information({super.key});

  @override
  State<Map_Result_information> createState() => _Map_Result_informationState();
}

class _Map_Result_informationState extends State<Map_Result_information> {
  List<String> information_name = [
    '사유의 방',
    '스투파의 숲, 신비로운 인도 이야기',
    '용을 찾아라',
    '탕탕평평蕩蕩平平-글과 그림의 힘'
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
                                  'assets/search/map_information_${i + 1}.png'),
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
                              i == 0 ? '상실전시' : '23.11.18 ~ 24.04.14',
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
