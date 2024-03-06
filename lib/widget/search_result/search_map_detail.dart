import 'package:flutter/material.dart';
import 'package:frame/widget/image_search_tabbar.dart';
import 'package:frame/widget/search_result/map_information.dart';
import 'package:frame/widget/search_result/map_post.dart';

class Search_Map_Detail extends StatefulWidget {
  const Search_Map_Detail({super.key});

  @override
  State<Search_Map_Detail> createState() => _Search_Map_DetailState();
}

class _Search_Map_DetailState extends State<Search_Map_Detail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 710,
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/search/map_detail_1.png'),
                    )),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '국립 중앙 박물관',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    '서울 용산구',
                    style: TextStyle(
                      color: Color(0xFF767676),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        '관련 정보 ',
                        style: TextStyle(
                          color: Color(0xFF767676),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        ' 563개',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                height: 594,
                width: 375,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Image_Search_Tabbar(),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Map_Result_Post(),
                            Map_Result_information(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: Center(
                          child: Image.asset('assets/search/Left.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 263,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Image.asset('assets/search/My Location.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
