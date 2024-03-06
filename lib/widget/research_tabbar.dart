import 'package:flutter/material.dart';
import 'package:frame/widget/indicator.dart';

class Research_TabbarBuild extends StatefulWidget
    implements PreferredSizeWidget {
  const Research_TabbarBuild({super.key});

  @override
  State<Research_TabbarBuild> createState() => _Research_TabbarBuildState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _Research_TabbarBuildState extends State<Research_TabbarBuild> {
  List<String> tab_list = ['추천', '팔로잉', '관심'];

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
      indicator: CustomTabIndicator(),
      labelColor: Color(0xFF000000), // 선택된 탭의 텍스트 색상
      unselectedLabelColor: Color(0xFFB3B3B3), // 선택되지 않은 탭의 텍스트 색상
      dividerColor: Color(0xffFFFFFF),
    );
  }
}
