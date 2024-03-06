import 'package:flutter/material.dart';
import 'package:frame/widget/community/community_banner.dart';
import 'package:frame/widget/community/community_filter.dart';
import 'package:frame/widget/community/community_performance.dart';

class Performance extends StatefulWidget {
  const Performance({super.key});

  @override
  State<Performance> createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Community_Banner(),
            Community_Filter(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Community_Perfomance(),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
