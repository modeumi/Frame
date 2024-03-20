import 'package:flutter/material.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/research/interest.dart';
import 'package:frame/widget/research/mainfild.dart';
import 'package:frame/widget/research/mainfild_perform.dart';
import 'package:frame/widget/research/mainfild_post.dart';

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
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                MainFild(),
                Container(
                  width: 375,
                  height: 8,
                  decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
                ),
                Mainfild_Perfomance(),
                Mainfild_Post(),
                SizedBox(
                  height: 65,
                )
              ],
            ),
          ),
          Positioned(bottom: 20, left: 21, child: FloatingWidget(false)),
        ],
      ),
    );
  }
}
