import 'package:flutter/material.dart';
import 'package:frame/onboarding/onboarding1.dart';
import 'package:group_radio_button/group_radio_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

enum Language { cpp, python, dart }

class _OnBoardingPageState extends State<OnBoardingPage> {
  String _language = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/community/Back.png'),
        actions: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black),
            child: Center(
              child: Text(
                '1',
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
            width: 8,
          ),
          Container(
            width: 84,
            height: 6,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                )
              ],
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 84,
            height: 6,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                )
              ],
            ),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: 375,
        color: Colors.white,
        child: Column(children: [
          SizedBox(
            height: 45,
          ),
          Text(
            '성별이 어떻게 되시나요?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '같은 성별이 관심있어한 게시물과 전시를 추천해요.',
            style: TextStyle(
              color: Color(0xFF767676),
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: 375,
            child: Row(
              children: [
                Container(
                  width: 158,
                  height: 221,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFEBEBEB)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioButton(
                        description: "남성",
                        value: "남성",
                        groupValue: _language,
                        fillColor: Colors.black,
                        onChanged: (value) => setState(
                          () => _language = value ?? '',
                        ),
                        textPosition: RadioButtonTextPosition.left,
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        width: 124,
                        height: 227,
                        child: Image.asset(
                          'assets/Onboarding/Mask group-1.png',
                          fit: BoxFit.cover,
                        ),
                      ))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 168,
                      height: 221,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFEBEBEB)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: RadioButton(
                              description: "여성",
                              value: "여성",
                              groupValue: _language,
                              fillColor: Colors.black,
                              onChanged: (value) => setState(
                                () => _language = value ?? '',
                              ),
                              textPosition: RadioButtonTextPosition.left,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            width: 152,
                            height: 227,
                            child: Image.asset(
                              'assets/Onboarding/Mask group.png',
                              fit: BoxFit.cover,
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 3,
            width: 375,
            color: Colors.black,
          )
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnBoarding1()));
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                primary: Colors.black,
                minimumSize: Size(343, 12)),
            child: Text(
              '다음',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}
