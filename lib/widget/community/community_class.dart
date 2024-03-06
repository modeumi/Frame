import 'package:flutter/material.dart';
import 'package:frame/widget/community/class_detail.dart';

class Community_Class extends StatefulWidget {
  const Community_Class({super.key});

  @override
  State<Community_Class> createState() => _Community_ClassState();
}

class _Community_ClassState extends State<Community_Class> {
  List<String> title = ['I들의 전시 모임', '혼자 전시 보기 외로운 사람 모여라!', '전시..좋아하세요..?'];
  List<String> place = ['서울 종로구', '서울 강남구', '서울 종로구'];
  List<String> time = [
    '24.03.01 (금) 오후 7:00',
    '24.03.02 (토) 오후 1:00',
    '24.03.01 (금) 오후 7:00'
  ];
  List<String> member = ['8/10', '5/6', '8/12'];

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 375,
        child: Column(
          children: [
            for (int i = 0; i < title.length; i++)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Class_Detail(),
                      ));
                },
                child: Container(
                  width: 343,
                  height: 125,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFFEBEBEB)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        width: 109,
                        height: 109,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/community/class_${i + 1}.png',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                width: 36,
                                height: 36,
                                child:
                                    Image.asset('assets/mypage/Favorite.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 34,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE0B974),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  '전시',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              title[i],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/community/Location.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '오프라인',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ' · ${place[i]}',
                                  style: TextStyle(
                                    color: Color(0xFF767676),
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/community/Calendar.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  time[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  child: Image.asset(
                                    'assets/community/class_member_${i + 1}.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Spacer(),
                                Image.asset(
                                  'assets/community/User Groups.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  member[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
