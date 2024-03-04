import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  const Following({super.key});

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  List<String> nickname = [
    'Seo_yeon',
    'Garam_',
    'Sa_rang',
    'Mirr',
    'Budeul_',
    'minho'
  ];

  List<int> image_height = [293, 168, 191, 274];

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Container(
                    width: 61,
                    height: 20,
                    margin: EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                    child: Row(
                      children: [
                        Text(
                          '전체 보기',
                          style: TextStyle(
                            color: Color(0xFF767676),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image.asset(
                          'assets/search/Forward.png',
                          width: 16,
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < nickname.length; i++)
                    Container(
                      width: 62,
                      height: 88,
                      margin: EdgeInsets.only(
                          left: i == 0 ? 16 : 8,
                          right: i == nickname.length - 1 ? 16 : 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/research/profile_b_${i + 1}.png',
                            width: 62,
                            height: 62,
                          ),
                          Text(
                            nickname[i],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 168,
                        margin: EdgeInsets.only(bottom: 8),
                        height: image_height[0].toDouble(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/research/following_1.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                width: 152,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/research/profile_s_1.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      nickname[0],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/research/Menu Vertical.png',
                                      width: 10,
                                      height: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Image.asset('assets/research/Pin.png'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 168,
                        margin: EdgeInsets.only(bottom: 8),
                        height: image_height[2].toDouble(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/research/following_3.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                width: 152,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/research/profile_s_3.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      nickname[2],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/research/Menu Vertical.png',
                                      width: 10,
                                      height: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Image.asset('assets/research/Pin.png'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 168,
                        margin: EdgeInsets.only(bottom: 8),
                        height: image_height[1].toDouble(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/research/following_2.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                width: 152,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/research/profile_s_2.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      nickname[1],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/research/Menu Vertical.png',
                                      width: 10,
                                      height: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Image.asset(
                                  'assets/research/Frame 1437256997.png'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 168,
                        margin: EdgeInsets.only(bottom: 8),
                        height: image_height[3].toDouble(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/research/following_4.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                width: 152,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/research/profile_s_4.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      nickname[3],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/research/Menu Vertical.png',
                                      width: 10,
                                      height: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Image.asset('assets/research/Pin.png'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
