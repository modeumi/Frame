import 'package:flutter/material.dart';
import 'package:frame/mypage/like_perform.dart';
import 'package:frame/mypage/mypage_appbar.dart';
import 'package:frame/widget/community_tabbar.dart';
import 'package:frame/widget/floatingbutton.dart';

class All_Like extends StatefulWidget {
  const All_Like({super.key});

  @override
  State<All_Like> createState() => _All_LikeState();
}

class _All_LikeState extends State<All_Like> {
  Map<String, bool> filter = {'인기순': true, '최신순': false};

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
              title: MyPage_Appbar('좋아요'),
              bottom: Community_TabbarBuild(),
            ),
            bottomSheet: FloatingWidget(false),
            body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              for (String text in filter.keys)
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          filter.forEach((key, value) {
                                            filter[key] = false;
                                          });
                                          filter[text] = true;
                                        });
                                      },
                                      child: Container(
                                        width: 64,
                                        height: 34,
                                        child: Center(
                                          child: Text(
                                            text,
                                            style: TextStyle(
                                              color: filter[text]!
                                                  ? Colors.black
                                                  : Color(0xFF767676),
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: filter[text]!
                                                  ? FontWeight.w600
                                                  : FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    filter.keys.toList().indexOf(text) == 0
                                        ? Container(
                                            width: 1,
                                            height: 10,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 4, vertical: 10),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: Color(0xff767676))),
                                          )
                                        : Container()
                                  ],
                                ),
                            ],
                          ),
                        ),
                        Like_Perfomance(),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                ),
                Text('data'),
                Text('data'),
                Text('data')
              ],
            )),
      ),
    );
  }
}
