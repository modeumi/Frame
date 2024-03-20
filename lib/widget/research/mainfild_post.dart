import 'package:flutter/material.dart';

class Mainfild_Post extends StatefulWidget {
  const Mainfild_Post({super.key});

  @override
  State<Mainfild_Post> createState() => _Mainfild_PostState();
}

class _Mainfild_PostState extends State<Mainfild_Post> {
  List<String> nickname = [
    'Seo_yeon',
    'Garam_',
    'Sa_rang',
    'Mirr_',
    'Seo_yeon'
  ];
  List<int> image_height = [168, 293, 293, 191, 223];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 36, bottom: 8),
            child: Text(
              '유사한 게시글',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
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
                          image: AssetImage('assets/research/interest_1.png'),
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
                          image: AssetImage('assets/research/interest_4.png'),
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
                          child: Image.asset(
                              'assets/research/Frame 1437256997.png'),
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
                          image: AssetImage('assets/research/interest_3.png'),
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
                          child: Image.asset(
                              'assets/research/Frame 1437256997.png'),
                        )
                      ],
                    ),
                  )
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
                          image: AssetImage('assets/research/interest_2.png'),
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
                    height: image_height[4].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/research/interest_5.png'),
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
                                  'assets/research/profile_s_5.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  nickname[4],
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
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20))),
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
