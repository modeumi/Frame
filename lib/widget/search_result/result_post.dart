import 'package:flutter/material.dart';

class Result_Post extends StatefulWidget {
  const Result_Post({super.key});

  @override
  State<Result_Post> createState() => _Result_PostState();
}

class _Result_PostState extends State<Result_Post> {
  List<String> nickname = [
    'Seo_yeon',
    'Garam_',
    'Sa_rang',
    'Mirr_',
    'Seo_yeon'
  ];
  List<int> image_height = [168, 293, 119, 216, 191, 173];
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        child: Container(
          width: 375,
          margin: EdgeInsets.only(bottom: 30),
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 167.5,
                    margin: EdgeInsets.only(bottom: 8),
                    height: image_height[0].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/search/search_post_1.png'),
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
                      ],
                    ),
                  ),
                  Container(
                    width: 167.5,
                    margin: EdgeInsets.only(bottom: 8),
                    height: image_height[1].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/search/search_post_2.png'),
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
                      ],
                    ),
                  ),
                  Container(
                    width: 167.5,
                    margin: EdgeInsets.only(bottom: 8),
                    height: image_height[2].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/search/search_post_3.png'),
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
                    width: 167.5,
                    margin: EdgeInsets.only(bottom: 8),
                    height: image_height[3].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/search/search_post_4.png'),
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
                      ],
                    ),
                  ),
                  Container(
                    width: 167.5,
                    margin: EdgeInsets.only(bottom: 8),
                    height: image_height[4].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/search/search_post_5.png'),
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
                      ],
                    ),
                  ),
                  Container(
                    width: 167.5,
                    margin: EdgeInsets.only(bottom: 8),
                    height: image_height[0].toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/search/search_post_6.png'),
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
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
