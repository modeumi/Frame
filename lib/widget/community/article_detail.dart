import 'package:flutter/material.dart';
import 'package:frame/widget/community_detail_appbar.dart';
import 'package:frame/widget/floatingbutton.dart';

class Article_Detail extends StatefulWidget {
  const Article_Detail({super.key});

  @override
  State<Article_Detail> createState() => _Article_DetailState();
}

class _Article_DetailState extends State<Article_Detail> {
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
        bottomSheet: FloatingWidget(),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1530,
            child: Stack(
              children: [
                Container(
                  width: 375,
                  height: 250,
                  child: Image.asset(
                      'assets/community/https___kr.hypebeast 4-1.png'),
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
                        Text(
                          'MSCHF가 직접 소개하는 전시\n‘NOTHING IS SACRED’',
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
                              width: 12,
                              height: 12,
                              child: Center(
                                child: Image.asset(
                                  'assets/community/Clock.png',
                                  width: 12,
                                  height: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '5분',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 0.1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              child: Center(
                                child: Image.asset(
                                  'assets/community/Eye.png',
                                  width: 12,
                                  height: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '30',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 0.1),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              child: Image.asset(
                                'assets/community/Pencil Drawing.png',
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '24.03.01',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 0.1),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              child: Image.asset(
                                'assets/community/frame.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '프레임 큐레이터',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 13, bottom: 16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        Text(
                          '''공개하는 프로젝트마다 화제를 모으는 미국의 아트 콜렉티브 MSCHF가 대림미술관에서 대규모 아카이브 전시를 연다. 세 개의 층으로 구성된 전시에서는 이들의 첫 스니커 ‘지저스 슈즈’부터 논란이 됐던 ‘사탄 슈즈’, 데미안 허스트의 판화를 오려내 판매한 프로젝트까지 그들의 작품 대부분이 전시됐다.
                  
먼저 2층에는 MSCHF가 사람들이 직접 체험하거나 상호작용을 거친 작품들이 배치됐다. 한 명에게 1천 개의 모자, 양말을 판매한 ‘미스치프 홀세일’의 비주얼은 압도적이며, 오직 의자에 앉는 콘텐츠만 수록된 게임 <체어 시뮬레이션>, 화면에 그린 그림을 새로운 영화로 제작하는 ‘프리 무비’ 등을 원래의 제작 의도대로 관람 및 체험할 수 있다.''',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          width: 343,
                          height: 228,
                          child: Image.asset(
                            'assets/community/https___kr.hypebeast 1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          '''MSCHF를 대표하는 컬러로 공간을 칠한 3층에서는 이들의 ‘드롭’이 대거 배치됐다. 전시 한쪽에 “우리의 예술을 갤러리만을 위한 것이 아니다. 현실 세계에 존재하고, 함께 소통하도록 만들어졌다”라고 적힌 것처럼, 드롭들은 처음부터 전시가 아닌 판매 목적으로 제작됐다. 실제로 소금 한 알보다 작은 초소형 루이 비통 가방은 퍼렐 윌리엄스의 ‘주피터 경매’에 출품됐고, 이들의 ‘버킨스탁’ 샌들은 에르메스 버킨 백을 해체해 제작한 뒤 판매됐다.
                  
같은 층의 ‘핏 락커’에서는 소셜 미디어에서 화제가 된 빅 레드 부츠와 후속작 빅 블랙 부츠, 크록스 협업 부츠를 신어볼 수 있으며, 그 주위로 MSCHF가 출시한 각종 스니커가 전시됐다. 다만, 웨이비 베이비는 반스의 소송 때문에 소송장 속 사진으로만 존재한다.''',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          width: 343,
                          height: 228,
                          child: Image.asset(
                            'assets/community/https___kr.hypebeast 3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 343,
                          height: 1,
                          margin: EdgeInsets.only(top: 11, bottom: 20),
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
                              '너무 좋은글이였습니다',
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
                              '전시에 가보고 싶네요',
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
