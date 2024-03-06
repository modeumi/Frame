import 'package:flutter/material.dart';

class Community_Banner extends StatefulWidget {
  const Community_Banner({super.key});

  @override
  State<Community_Banner> createState() => _Community_BannerState();
}

class _Community_BannerState extends State<Community_Banner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 160,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/community/banner.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: 71,
                  height: 3,
                  margin: EdgeInsets.only(right: 8, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: i == 0 ? Color(0xffffffff) : Color(0xff767676),
                    ),
                    image: DecorationImage(
                        image: AssetImage(i == 0
                            ? 'assets/community/Line_w.png'
                            : 'assets/community/Line_b.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              Text(
                '1/4',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
