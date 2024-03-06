import 'package:flutter/material.dart';
import 'package:frame/widget/community_indicator.dart';

class Community_TabbarBuild extends StatefulWidget
    implements PreferredSizeWidget {
  const Community_TabbarBuild({super.key});

  @override
  State<Community_TabbarBuild> createState() => _Community_TabbarBuildState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _Community_TabbarBuildState extends State<Community_TabbarBuild> {
  List<String> tab_list = ['전시/공연', '아티스트', '아티클', '모임'];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        for (String text in tab_list)
          Tab(
              child: Container(
            width: 80,
            height: 40,
            child: Center(child: Text(text)),
          )),
      ],
      labelStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Pretendard',
        fontWeight: FontWeight.w700,
      ),
      indicator: Community_CustomTabIndicator(),
      labelColor: Color(0xFF000000), // 선택된 탭의 텍스트 색상
      unselectedLabelColor: Color(0xFFB3B3B3), // 선택되지 않은 탭의 텍스트 색상
      dividerColor: Color(0xffFFFFFF),
    );
  }
}
