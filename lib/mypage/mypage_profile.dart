import 'package:flutter/material.dart';

class MyPage_Profile extends StatefulWidget {
  const MyPage_Profile({super.key});

  @override
  State<MyPage_Profile> createState() => _MyPage_ProfileState();
}

class _MyPage_ProfileState extends State<MyPage_Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 184,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 375,
                  height: 172,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/mypage/20230902_165917 1.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 16,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/mypage/Ellipse 125.png'),
                            fit: BoxFit.cover)),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: 375,
          height: 40,
          padding: EdgeInsets.only(left: 36, right: 6),
          child: Row(
            children: [
              Text(
                'Bit_na',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 4),
                child: Image.asset(
                  'assets/community/Home.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 4),
                child: Image.asset(
                  'assets/community/Instagram.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                child: Image.asset(
                  'assets/community/Email.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Container(
          width: 375,
          height: 41,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '40',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Text(
                    '관람기록',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '500',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Text(
                    '팔로우',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '120',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Text(
                    '팔로잉',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          width: 375,
          height: 32,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
          child: Center(
            child: Text(
              '프로필 편집',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 375,
          height: 8,
          decoration: BoxDecoration(color: Color(0xFFECECEC)),
        )
      ],
    );
  }
}
