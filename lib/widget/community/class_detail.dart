import 'package:flutter/material.dart';
import 'package:frame/widget/community_detail_appbar.dart';
import 'package:frame/widget/floatingbutton.dart';

class Class_Detail extends StatefulWidget {
  const Class_Detail({super.key});

  @override
  State<Class_Detail> createState() => _Class_DetailState();
}

class _Class_DetailState extends State<Class_Detail> {
  List<String> nickname = [
    'U_ram',
    'Bada_',
    'Him_chan',
    'ha_ru',
    'Seonho_',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      width: 375,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Community_Detail_Appbar(),
        ),
        bottomSheet: Container(
          width: 375,
          height: 166,
          padding: EdgeInsets.only(top: 20, left: 21),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 1,
                  offset: Offset(0, -2),
                  spreadRadius: 0,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              Container(
                width: 343,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xff000000),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    '참여하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              FloatingWidget()
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1490,
            child: Stack(
              children: [
                Container(
                  width: 375,
                  height: 250,
                  child: Image.asset(
                    'assets/community/class_image_1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 223,
                  child: Container(
                    width: 375,
                    height: 1500,
                    margin: EdgeInsets.only(bottom: 150),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 34,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE0B974),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      '전시',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'I들의 전시 모임',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 18,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/community/Location.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '오프라인',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      ' · 서울 종로구',
                                      style: TextStyle(
                                        color: Color(0xFF767676),
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 18,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/community/Calendar.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '24.03.01 (금) 오후 7:00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 110,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 125,
                                    height: 30,
                                    padding: EdgeInsets.only(top: 5, left: 6),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/community/Union.png',
                                            ),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 10,
                                          height: 15,
                                          child: Center(
                                            child: Image.asset(
                                              'assets/community/info.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '주최자에게 메세지 보내기',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF767676),
                                            fontSize: 10,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                      'assets/main/Comments.png',
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 8, bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        IntrinsicHeight(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Text(
                                  '주최자',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      '전체 보기',
                                      style: TextStyle(
                                        color: Color(0xFF767676),
                                        fontSize: 10,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      width: 12,
                                      height: 12,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/search/Forward.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              child: Image.asset(
                                'assets/research/profile_b_1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Seo_yeon',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '참여자 (8/10)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < nickname.length; i++)
                              Container(
                                width: 48,
                                margin: EdgeInsets.only(right: 11),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/community/profile_${i + 1}.png',
                                      width: 48,
                                      height: 48,
                                    ),
                                    Text(
                                      nickname[i],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Text(
                                      '...',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '+2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        Text(
                          '모임 소개',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '"i인 사람들을 위한 모임에 오신 것을 환영합니다! 우리 모임은 공동의 관심사를 공유하며 함께 전시를 관람해요. 편안한 분위기에서 새로운 친구들을 만나고 소중한 대화를 나누는 모임이에요."',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '모임 설명',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 343,
                          height: 157,
                          child: Image.asset(
                            'assets/community/3627468_16971960998015_big 1-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '''미스치프에서 개최한 ‘Nothing is sacred’전시를 함께 관람할 예정입니다. 함께 전시 관람 후 카페에서 소감 공유 및 친목을 다지려고 합니다. 많이 참여 해주세요! 

 · 모임 장소 : 광화문 광장
 · 참가 비용 : 20,000원

*참가시 전시 예매는 하실 필요 없습니다. 
  늦은 취소시 위약금이 발생할 수 있습니다.''',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 44,
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '댓글',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              child: Image.asset(
                                'assets/community/Ellipse 119.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Garam_',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '늦으면 전시장에서 모여도 될까요?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                child: Image.asset(
                                  'assets/community/Ellipse 118.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Seo_yeon',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '네 괜찮아요!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 36,
                          padding: EdgeInsets.only(left: 16, right: 8),
                          decoration: BoxDecoration(
                              color: Color(0xFFEBEBEB),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(children: [
                            Text(
                              '댓글을 입력해주세요',
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: Center(
                                child: Image.asset(
                                    'assets/community/Send Letter.png'),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
