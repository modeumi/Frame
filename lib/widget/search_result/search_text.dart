import 'package:flutter/material.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/search_result/search_map.dart';
import 'package:frame/widget/searchwidget.dart';
import 'package:frame/widget/text_search_tabbar.dart';

class Search_text extends StatefulWidget {
  const Search_text({super.key});

  @override
  State<Search_text> createState() => _Search_textState();
}

class _Search_textState extends State<Search_text> {
  List<String> nickname = [
    'Seo_yeon',
    'Sa_rang',
    'Garam_',
  ];
  List<int> image_height = [168, 168, 344];

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
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
        body: Stack(
          children: [
            Container(
              width: 375,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DefaultTabController(
                        length: 6, child: Text_Search_Tabbar()),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            '게시글',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '더보기',
                            style: TextStyle(
                              color: Color(0xFF767676),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            'assets/search/Forward.png',
                            width: 16,
                            height: 16,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 168,
                                margin: EdgeInsets.only(bottom: 8),
                                height: image_height[0].toDouble(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/search/text_search_1.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 8,
                                      left: 8,
                                      child: Container(
                                        width: 152,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/research/profile_s_1.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              nickname[0],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 168,
                                margin: EdgeInsets.only(bottom: 8),
                                height: image_height[1].toDouble(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/search/text_search_2.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 8,
                                      left: 8,
                                      child: Container(
                                        width: 152,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/research/profile_s_3.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              nickname[1],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 167,
                                margin: EdgeInsets.only(bottom: 8),
                                height: image_height[2].toDouble(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/search/text_search_3.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 8,
                                      left: 8,
                                      child: Container(
                                        width: 152,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/research/profile_s_2.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              nickname[2],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 375,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFFEBEBEB),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            '전시/공연',
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
                                    builder: (context) => Search_Map(),
                                  ));
                            },
                            child: Row(
                              children: [
                                Text(
                                  '더보기',
                                  style: TextStyle(
                                    color: Color(0xFF767676),
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Image.asset(
                                  'assets/search/Forward.png',
                                  width: 16,
                                  height: 16,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          for (int i = 4; i < 6; i++)
                            Container(
                              width: 167,
                              margin: EdgeInsets.only(
                                  bottom: 8, right: i == 4 ? 8 : 0),
                              height: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/search/text_search_$i.png'),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
            Positioned(bottom: 10, left: 21, child: FloatingWidget())
          ],
        ),
      ),
    );
  }
}
