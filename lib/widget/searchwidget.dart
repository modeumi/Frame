import 'package:flutter/material.dart';
import 'package:frame/screen/picture_search.dart';
import 'package:frame/widget/search_result/search_text.dart';

class SearchWidget extends StatefulWidget implements PreferredSizeWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 40,
      margin: EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFEBEBEB),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Picture_Search(),
                ),
              );
            },
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/research/Unsplash.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            height: 12,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFF767676))),
          ),
          IntrinsicWidth(
            child: TextField(
              decoration: InputDecoration(
                  hintText: '검색어를 입력해주세요',
                  hintStyle: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Search_text(),
                  ));
            },
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/research/Search.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
