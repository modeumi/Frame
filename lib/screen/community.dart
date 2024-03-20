import 'package:flutter/material.dart';
import 'package:frame/widget/appbar.dart';
import 'package:frame/widget/community/article.dart';
import 'package:frame/widget/community/artist.dart';
import 'package:frame/widget/community/class.dart';
import 'package:frame/widget/community/performance.dart';
import 'package:frame/widget/community_tabbar.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/searchwidget.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      width: 375,
      height: 812,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Column(
              children: [AppbarBuild('커뮤니티'), SearchWidget()],
            ),
            toolbarHeight: 80,
            bottom: Community_TabbarBuild(),
          ),
          body: Stack(
            children: [
              TabBarView(
                children: [
                  Performance(),
                  Artist(),
                  Article(),
                  Commu_Class(),
                ],
              ),
              Positioned(bottom: 10, left: 21, child: FloatingWidget(false)),
            ],
          ),
        ),
      ),
    );
  }
}
