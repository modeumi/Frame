import 'package:flutter/material.dart';
import 'package:frame/mypage/all_history.dart';
import 'package:frame/mypage/all_like.dart';

class MyPage_History extends StatefulWidget {
  const MyPage_History({super.key});

  @override
  State<MyPage_History> createState() => _MyPage_HistoryState();
}

class _MyPage_HistoryState extends State<MyPage_History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text(
                    '관람기록',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => All_History(),
                          ));
                    },
                    child: Row(
                      children: [
                        Text(
                          '전체보기',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          child: Center(
                            child: Image.asset(
                              'assets/mypage/Forward.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 292,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 1, color: Colors.black.withOpacity(0.1))),
            child: Image.asset(
              'assets/mypage/calendar_image.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          IntrinsicHeight(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text(
                    '좋아요',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => All_Like(),
                          ));
                    },
                    child: Row(
                      children: [
                        Text(
                          '전체보기',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          child: Center(
                            child: Image.asset(
                              'assets/mypage/Forward.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 480,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '전시/공연',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 311,
                  height: 72,
                  child: Row(
                    children: [
                      for (int i = 1; i < 5; i++)
                        Container(
                          width: 72,
                          height: 72,
                          margin: EdgeInsets.only(right: i != 4 ? 7 : 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/mypage/perform_list_$i.png'),
                                  fit: BoxFit.cover)),
                        )
                    ],
                  ),
                ),
                Container(
                  width: 343,
                  height: 1,
                  margin: EdgeInsets.only(top: 8, bottom: 11),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                Text(
                  '아티스트',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 311,
                  height: 72,
                  child: Row(
                    children: [
                      for (int i = 1; i < 5; i++)
                        Container(
                          width: 72,
                          height: 72,
                          margin: EdgeInsets.only(right: i != 4 ? 7 : 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/mypage/artist_$i.png'),
                                  fit: BoxFit.cover)),
                        )
                    ],
                  ),
                ),
                Container(
                  width: 343,
                  height: 1,
                  margin: EdgeInsets.only(top: 8, bottom: 11),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                Text(
                  '아티클',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 311,
                  height: 72,
                  child: Row(
                    children: [
                      for (int i = 1; i < 5; i++)
                        Container(
                          width: 72,
                          height: 72,
                          margin: EdgeInsets.only(right: i != 4 ? 7 : 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/mypage/article_$i.png'),
                                  fit: BoxFit.cover)),
                        )
                    ],
                  ),
                ),
                Container(
                  width: 343,
                  height: 1,
                  margin: EdgeInsets.only(top: 8, bottom: 11),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                Text(
                  '모임',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 311,
                  height: 72,
                  child: Row(
                    children: [
                      for (int i = 1; i < 5; i++)
                        Container(
                          width: 72,
                          height: 72,
                          margin: EdgeInsets.only(right: i != 4 ? 7 : 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/mypage/class_$i.png'),
                                  fit: BoxFit.cover)),
                        )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
