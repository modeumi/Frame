import 'package:flutter/material.dart';

class MyPage_Appbar extends StatefulWidget {
  final String text;
  const MyPage_Appbar(this.text, {super.key});

  @override
  State<MyPage_Appbar> createState() => _AppbarBuildState();
}

class _AppbarBuildState extends State<MyPage_Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 40,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: [
          Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/mypage/Settings.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
