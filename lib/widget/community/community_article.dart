import 'package:flutter/material.dart';
import 'package:frame/widget/community/article_detail.dart';

class Community_Article extends StatefulWidget {
  const Community_Article({super.key});

  @override
  State<Community_Article> createState() => _Community_ArticleState();
}

class _Community_ArticleState extends State<Community_Article> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 375,
        margin: EdgeInsets.only(bottom: 30),
        child: Wrap(
          runSpacing: 18,
          children: [
            IntrinsicHeight(
              child: Container(
                width: 343,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Article_Detail(),
                            ));
                      },
                      child: Container(
                        width: 343,
                        height: 146,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/community/https___kr.hypebeast 4.png',
                              fit: BoxFit.cover,
                            ),
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
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'MSCHF가 직접 소개하는 전시 ‘NOTHING IS SACRED’',
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
                    Spacer(),
                    Container(
                      height: 12,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/community/frame.png',
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '프레임 큐레이터',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Container(
                            width: 12,
                            height: 12,
                            child: Center(
                              child: Image.asset(
                                'assets/community/Clock.png',
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '5분',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0.1),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            child: Center(
                              child: Image.asset(
                                'assets/community/Eye.png',
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '30',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0.1),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            child: Image.asset(
                              'assets/community/Pencil Drawing.png',
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '24.03.01',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0.1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IntrinsicHeight(
              child: Container(
                width: 343,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 343,
                      height: 146,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/community/tempFileForShare_20240202-171125 3.png',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 36,
                              height: 36,
                              child: Center(
                                child: Image.asset(
                                  'assets/mypage/Favorite.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'MSCHF가 직접 소개하는 전시 ‘NOTHING IS SACRED’',
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
                    Spacer(),
                    Container(
                      height: 12,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/community/frame.png',
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '프레임 큐레이터',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Container(
                            width: 12,
                            height: 12,
                            child: Center(
                              child: Image.asset(
                                'assets/community/Clock.png',
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '5분',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0.1),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            child: Center(
                              child: Image.asset(
                                'assets/community/Eye.png',
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '30',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0.1),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            child: Image.asset(
                              'assets/community/Pencil Drawing.png',
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '24.03.01',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0.1),
                          ),
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
