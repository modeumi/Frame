import 'package:flutter/material.dart';
import 'package:frame/widget/community/community_banner.dart';
import 'package:frame/widget/community/community_class.dart';
import 'package:frame/widget/community/community_filter.dart';

class Commu_Class extends StatefulWidget {
  const Commu_Class({super.key});

  @override
  State<Commu_Class> createState() => _Commu_ClassState();
}

class _Commu_ClassState extends State<Commu_Class> {
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
              child: Community_Class(),
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
