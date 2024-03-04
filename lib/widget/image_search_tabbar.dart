import 'package:flutter/material.dart';
import 'package:frame/widget/image_search_indicator.dart';

class Image_Search_Tabbar extends StatefulWidget
    implements PreferredSizeWidget {
  const Image_Search_Tabbar({super.key});

  @override
  State<Image_Search_Tabbar> createState() => _Image_Search_TabbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _Image_Search_TabbarState extends State<Image_Search_Tabbar> {
  List<String> tab_list = ['게시글', '전시 정보'];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        for (String text in tab_list)
          Tab(
              child: Container(
            width: 180,
            height: 40,
            child: Center(child: Text(text)),
          )),
      ],
      labelStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Pretendard',
        fontWeight: FontWeight.w700,
      ),
      indicator: Image_CustomTabIndicator(),
      labelColor: Color(0xFF000000), // 선택된 탭의 텍스트 색상
      unselectedLabelColor: Color(0xFFB3B3B3), // 선택되지 않은 탭의 텍스트 색상
    );
  }
}
