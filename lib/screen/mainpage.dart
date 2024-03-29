import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frame/widget/appbar.dart';

import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/main/main_following.dart';
import 'package:frame/widget/main/main_popualr.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => __MainPageState();
}

class __MainPageState extends State<MainPage> with TickerProviderStateMixin {
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: AppbarBuild('main'),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
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
              ],
            ),
            Positioned(bottom: 20, left: 21, child: FloatingWidget('main'))
          ],
        ),
      ),
    );
  }
}
