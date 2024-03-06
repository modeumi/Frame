import 'package:flutter/material.dart';
import 'package:frame/mypage/mypage_analysis.dart';
import 'package:frame/mypage/mypage_appbar.dart';
import 'package:frame/mypage/mypage_history.dart';
import 'package:frame/mypage/mypage_profile.dart';
import 'package:frame/widget/floatingbutton.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      width: 375,
      height: 812,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: MyPage_Appbar('마이페이지'),
          ),
          bottomSheet: FloatingWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                MyPage_Profile(),
                MyPage_History(),
                MyPage_Analysis(),
                SizedBox(
                  height: 55,
                )
              ],
            ),
          )),
    );
  }
}
