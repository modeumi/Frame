import 'package:flutter/material.dart';

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  Map<String, bool> filter = {'인기순': true, '최신순': false};
  List<String> nickname = [
    'Seo_yeon',
    'Garam_',
    'Sa_rang',
    'Mirr_',
    'Seo_yeon'
  ];
  List<int> image_height = [168, 293, 191, 292, 168, 182];

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 12, top: 8),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (String text in filter.keys)
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                filter.forEach((key, value) {
                                  filter[key] = false;
                                });
                                filter[text] = true;
                              });
                            },
                            child: Container(
                              width: 64,
                              height: 34,
                              child: Center(
                                child: Text(
                                  text,
                                  style: TextStyle(
                                    color: filter[text]!
                                        ? Colors.black
                                        : Color(0xFF767676),
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: filter[text]!
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                  ),
                                ),
                              ),
                            )),
                        filter.keys.toList().indexOf(text) == 0
                            ? Container(
                                width: 1,
                                height: 10,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Color(0xff767676))),
                              )
                            : Container()
                      ],
                    )
                ],
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
                            image:
                                AssetImage('assets/research/recommend_1.png'),
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
                            image:
                                AssetImage('assets/research/recommend_4.png'),
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
                    Container(
                      width: 168,
                      margin: EdgeInsets.only(bottom: 8),
                      height: image_height[4].toDouble(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/research/recommend_5.png'),
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
                            image:
                                AssetImage('assets/research/recommend_2.png'),
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
                                AssetImage('assets/research/recommend_3.png'),
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
                    Container(
                      width: 168,
                      margin: EdgeInsets.only(bottom: 8),
                      height: image_height[5].toDouble(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/research/recommend_6.png'),
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
              ],
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
