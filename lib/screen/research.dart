import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frame/widget/appbar.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/research/following.dart';
import 'package:frame/widget/research/interest.dart';
import 'package:frame/widget/research/recommend.dart';
import 'package:frame/widget/searchwidget.dart';
import 'package:frame/widget/research_tabbar.dart';

class ReSearch extends StatefulWidget {
  const ReSearch({super.key});

  @override
  State<ReSearch> createState() => _ReSearchState();
}

class _ReSearchState extends State<ReSearch> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      width: 375,
      height: 812,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [AppbarBuild('탐색'), SearchWidget()],
            ),
            toolbarHeight: 80,
            bottom: Research_TabbarBuild(),
          ),
          body: Stack(
            children: [
              TabBarView(
                children: [Recommend(), Following(), Interest()],
              ),
              Positioned(bottom: 10, left: 21, child: FloatingWidget(false)),
            ],
          ),
        ),
      ),
    );
  }
}
