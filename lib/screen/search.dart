import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/searchwidget.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> search_list = ['사진전', '갤러리', '무료', '전시회'];
  List<String> recommend_list = ['체험형', '아트페어', '미술관', '회화', '동양화'];
  List<String> rank_list = [
    '무료',
    '전시',
    '체험형',
    '사진전',
    '성수',
    '미술관',
    '갤러리',
    '아트페어'
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 30),
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            title: Column(
              children: [
                Center(
                  child: Text(
                    '검색',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SearchWidget()
              ],
            ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              IntrinsicHeight(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '최근 검색어',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '모두 삭제',
                            style: TextStyle(
                              color: Color(0xFF767676),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (String text in search_list)
                              IntrinsicWidth(
                                child: Container(
                                  margin: EdgeInsets.only(right: 8),
                                  padding: EdgeInsets.only(
                                      left: 16, right: 8, top: 8, bottom: 8),
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xFFEBEBEB),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        text,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Image.asset(
                                        'assets/search/Frame 1437256939.png',
                                        width: 20,
                                        height: 20,
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '추천 검색어',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (String text in recommend_list)
                              IntrinsicWidth(
                                child: Container(
                                  margin: EdgeInsets.only(right: 8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xFFEBEBEB),
                                    ),
                                  ),
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '인기 검색어',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              for (int i = 0; i < 4; i++)
                                Container(
                                  width: 157,
                                  height: 17,
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                        child: Text(
                                          '${i + 1}',
                                          style: TextStyle(
                                            color: Color(0xFF767676),
                                            fontSize: 14,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        rank_list[i],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Spacer(),
                                      i == 0
                                          ? Image.asset(
                                              'assets/search/Polygon 3.png')
                                          : Container(),
                                      i == 1
                                          ? Image.asset(
                                              'assets/search/Polygon 3-1.png')
                                          : Container()
                                    ],
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          Column(
                            children: [
                              for (int i = 4; i < rank_list.length; i++)
                                Container(
                                  width: 157,
                                  height: 17,
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                        child: Text(
                                          '${i + 1}',
                                          style: TextStyle(
                                            color: Color(0xFF767676),
                                            fontSize: 14,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        rank_list[i],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Spacer(),
                                      i == 5
                                          ? Image.asset(
                                              'assets/search/Polygon 3.png')
                                          : Container(),
                                      i == 6
                                          ? Image.asset(
                                              'assets/search/Polygon 3-1.png')
                                          : Container()
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '지도 검색',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 343,
                        height: 188,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/search/Group 1437256314.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/search/Group 1437256316.png',
                            width: 58,
                            height: 74,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(bottom: 10, left: 21, child: FloatingWidget()),
            ]),
          )),
    );
  }
}
