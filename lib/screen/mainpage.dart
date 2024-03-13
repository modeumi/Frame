import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/main/main_following.dart';
import 'package:frame/widget/main/main_popualr.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => __MyPageState();
}

class __MyPageState extends State<MyPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        actions: [
          SvgPicture.asset(
            'assets/mypage/Frame 1437257016.svg',
            width: 20,
            height: 24,
          ),
          SizedBox(
            width: 160,
          ),
          Image.asset('assets/main/Search-2.png'),
          SizedBox(
            width: 16,
          ),
          Image.asset('assets/main/Notification.png'),
          SizedBox(
            width: 16,
          ),
          Image.asset('assets/main/Comments.png'),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 350,
              height: 40,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w700,
                ),
                tabs: [
                  Tab(
                    text: '인기',
                  ),
                  Tab(
                    text: '팔로잉',
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                Popularity(),
                Following(),
              ],
            )),
            Padding(padding: const EdgeInsets.all(8.0), child: FloatingWidget())
          ],
        ),
      ),
    );
  }
}
