import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frame/widget/appbar.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/searchwidget.dart';
import 'package:frame/widget/tabbar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 44),
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
            bottom: TabbarBuild(),
          ),
          body: Stack(
            children: [
              TabBarView(
                children: [
                  Center(
                    child: Text('추천'),
                  ),
                  Center(
                    child: Text('팔로잉'),
                  ),
                  Center(
                    child: Text('관심'),
                  ),
                ],
              ),
              Positioned(bottom: 10, left: 21, child: FloatingWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
