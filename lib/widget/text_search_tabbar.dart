import 'package:flutter/material.dart';
import 'package:frame/widget/text_search_indicator.dart';

class Text_Search_Tabbar extends StatefulWidget implements PreferredSizeWidget {
  const Text_Search_Tabbar({super.key});

  @override
  State<Text_Search_Tabbar> createState() => _Text_Search_TabbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _Text_Search_TabbarState extends State<Text_Search_Tabbar> {
  List<String> tab_list = ['전체', '게시글', '전시/공연', '아티스트', '아티클', '모임'];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.zero,
      tabs: [
        for (String text in tab_list)
          Tab(
            text: text,
            height: 40,
          ),
      ],
      labelStyle: TextStyle(
        fontSize: 12,
        fontFamily: 'Pretendard',
        fontWeight: FontWeight.w700,
      ),
      indicator: Text_CustomTabIndicator(),
      labelColor: Color(0xFF000000), // 선택된 탭의 텍스트 색상
      unselectedLabelColor: Color(0xFFB3B3B3), // 선택되지 않은 탭의 텍스트 색상
      dividerColor: Color(0xffFFFFFF),
    );
  }
}
