import 'package:flutter/material.dart';

class Community_Detail_Appbar extends StatefulWidget {
  const Community_Detail_Appbar({super.key});

  @override
  State<Community_Detail_Appbar> createState() =>
      _Community_Detail_AppbarState();
}

class _Community_Detail_AppbarState extends State<Community_Detail_Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 40,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/community/Back.png'),
                ),
              )),
          Center(
            child: Text(
              '커뮤니티',
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
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/community/Favorite.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/community/Share.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
