import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frame/reservation/before_view.dart';
import 'package:frame/reservation/select_time.dart';
import 'package:frame/reservation/view_completed.dart';
import 'package:frame/widget/appbar.dart';
import 'package:frame/widget/floatingbutton.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, // 배경색을 파란색으로 설정
      statusBarIconBrightness:
          Brightness.light, // 아이콘의 밝기를 밝게 설정 (어두운 배경 위에 밝은 아이콘)
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppbarBuild('예약'),
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
                    text: '관람 전',
                  ),
                  Tab(
                    text: '관람 완료',
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                BeforeView(),
                ViewComplet(),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingWidget(''),
            )
          ],
        ),
      ),
    );
  }
}
