import 'package:flutter/material.dart';
import 'package:frame/mypage/mypage_appbar.dart';
import 'package:frame/widget/floatingbutton.dart';

class All_History extends StatefulWidget {
  const All_History({super.key});

  @override
  State<All_History> createState() => _All_HistoryState();
}

class _All_HistoryState extends State<All_History> {
  Map<String, bool> filter = {'오름차순': true, '내림차순': false};
  List<String> feb_date = ['29', '29', '25', '24', '18', '17', '11', '10', '4'];
  List<String> jan_date = ['28', '27', '20'];
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      width: 375,
      height: 812,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: MyPage_Appbar('관람 기록'),
          ),
          bottomSheet: FloatingWidget(),
          body: Container(
            width: 375,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      children: [
                        Text(
                          '2024년',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          width: 9,
                          height: 6,
                          child: Image.asset(
                            'assets/mypage/down.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Text(
                      '2월',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    children: [
                      for (int i = 0; i < feb_date.length; i++)
                        Container(
                          width: 125,
                          height: 125,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/mypage/history_${i + 1}.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Text(
                            feb_date[i],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                    ],
                  ),
                  Container(
                    width: 343,
                    height: 1,
                    margin: EdgeInsets.only(top: 28, bottom: 28),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Text(
                      '1월',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 1,
                    children: [
                      for (int i = 0; i < jan_date.length; i++)
                        Container(
                          width: 124,
                          height: 125,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/mypage/history_2_${i + 1}.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Text(
                            jan_date[i],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
