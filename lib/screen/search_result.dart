import 'package:flutter/material.dart';
import 'package:frame/widget/search_result/result_information.dart';
import 'package:frame/widget/search_result/result_post.dart';
import 'package:frame/widget/image_search_tabbar.dart';

class Search_Result extends StatefulWidget {
  const Search_Result({super.key});

  @override
  State<Search_Result> createState() => _Search_ResultState();
}

class _Search_ResultState extends State<Search_Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 800,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
            top: 44,
            child: IntrinsicHeight(
              child: Container(
                width: 375,
                child: Center(
                  child: Text(
                    '검색 결과',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 375,
              height: 689,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Image_Search_Tabbar(),
                    Expanded(
                      child: TabBarView(
                          children: [Result_Post(), Result_information()]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 375,
              height: 85,
              padding: EdgeInsets.only(top: 20, left: 21),
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
                        child: Image.asset('assets/search/Image File Add.png'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
