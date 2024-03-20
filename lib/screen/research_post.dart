import 'package:flutter/material.dart';
import 'package:frame/widget/research/mainfild.dart';

class ResearchPost extends StatefulWidget {
  const ResearchPost({super.key});

  @override
  State<ResearchPost> createState() => _ResearchPostState();
}

class _ResearchPostState extends State<ResearchPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          '탐색',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        centerTitle: true,
        actions: [
          Image.asset('assets/reservation/Notification.png'),
          SizedBox(
            width: 20,
          ),
          Image.asset('assets/reservation/Comments.png'),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          MainFild(),
          Container(
            width: 375,
            height: 8,
            decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
          )
        ]),
      ),
    );
  }
}
