import 'package:flutter/material.dart';
import 'package:frame/reservation/before_view.dart';
import 'package:frame/reservation/select_time.dart';
import 'package:frame/reservation/view_completed.dart';
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
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (ReservationPage())));
              },
              child: Image.asset('assets/community/Back.png')),
          title: Text(
            '예약',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          )),
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
              child: FloatingWidget(),
            )
          ],
        ),
      ),
    );
  }
}
