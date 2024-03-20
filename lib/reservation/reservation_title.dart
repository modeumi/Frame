import 'package:flutter/material.dart';

class ReservationTitle extends StatefulWidget {
  const ReservationTitle({super.key});

  @override
  State<ReservationTitle> createState() => _ReservationTitleState();
}

class _ReservationTitleState extends State<ReservationTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '시간, 자연, 사랑',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
      SizedBox(
        height: 18,
      ),
      Row(
        children: [
          Image.asset(
              'assets/reservation/Screenshot_20240202_153830_Chrome-1.png'),
          SizedBox(
            width: 16,
          ),
          Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '장소',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '전시 기간',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '운영 시간',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: '디뮤지엄',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '  ·  서울 성동구',
                    style: TextStyle(
                      color: Color(0xFF767676),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ])),
                Text(
                  '23.11.18  ~  24.04.14',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '화,수,목,일   오전 11:00 ~ 오후 18:00 ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '금,토            오전 11:00 ~ 오후 19:00  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '* 월요일 휴관 / 입장마감 운영시간 1시간 전',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 10,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Container(
        width: 343,
        height: 0.5,
        decoration: BoxDecoration(border: Border.all(color: Color(0xFFECECEC))),
      ),
      SizedBox(
        height: 16,
      ),
    ]);
  }
}
