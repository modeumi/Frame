import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:frame/reservation/ticketview.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> with TickerProviderStateMixin {
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
        title: Text('예약',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            )),
        centerTitle: true,
        actions: [
          Image.asset('assets/reservation/Notification.png'),
          SizedBox(
            width: 16,
          ),
          Image.asset('assets/reservation/Comments.png'),
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
                TicketView(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
