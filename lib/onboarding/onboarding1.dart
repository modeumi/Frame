import 'package:flutter/material.dart';
import 'package:frame/onboarding/onboarding.dart';
import 'package:frame/onboarding/onboarding2.dart';
import 'package:group_radio_button/group_radio_button.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoarding1> {
  String _language = "";
  String _seletedAgeGroup = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => OnBoardingPage()));
            },
            child: Image.asset('assets/community/Back.png')),
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
              color: Colors.black,
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
              color: Colors.black,
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
                  color: Colors.white,
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
          SizedBox(
            width: 40,
          ),
        ],
      ),
      body: Container(
        width: 390,
        color: Colors.white,
        child: Column(children: [
          SizedBox(
            height: 45,
          ),
          Text(
            '연령대가 어떻게 되시나요?',
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
            '같은 연령대가 관심있어한 게시물과 전시를 추천해요.',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 168,
                height: 221,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      _seletedAgeGroup == '10대' ? Colors.white : Colors.black,
                  border: Border.all(color: Color(0xFFEBEBEB)),
                ),
                child: Column(
                  children: [
                    RadioButton(
                      description: "10대",
                      value: "10대",
                      groupValue: _language,
                      fillColor: Colors.white,
                      onChanged: (value) => setState(
                        () => _language = value ?? '',
                      ),
                      textPosition: RadioButtonTextPosition.left,
                      textStyle: TextStyle(
                        color: Colors.white,
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
                        'assets/Onboarding/Mask group-2.png',
                        fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                width: 168,
                height: 221,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFEBEBEB)),
                ),
                child: Column(
                  children: [
                    RadioButton(
                      description: "20대",
                      value: "20대",
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
                      width: 152,
                      height: 227,
                      child: Image.asset(
                        'assets/Onboarding/Mask group-3.png',
                        fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 168,
                height: 221,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFEBEBEB)),
                ),
                child: Column(
                  children: [
                    RadioButton(
                      description: "30대",
                      value: "30대",
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
                      width: 152,
                      height: 227,
                      child: Image.asset(
                        'assets/Onboarding/Mask group-4.png',
                        fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                width: 168,
                height: 221,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFEBEBEB)),
                ),
                child: Column(
                  children: [
                    RadioButton(
                      description: "40대 이상",
                      value: "40대 이상",
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
                      width: 152,
                      height: 227,
                      child: Image.asset(
                        'assets/Onboarding/Mask group-5.png',
                        fit: BoxFit.cover,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnBoarding2()));
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
                height: 0,
              ),
            )),
      ),
    );
  }

  Widget _buildAgeGroupConatiner({
    required String ageGroup,
    required String imagePath,
  }) {
    bool isSelected = _seletedAgeGroup == ageGroup;
    Color containerColor = isSelected ? Colors.black : Colors.white;
    Color textColor = isSelected ? Colors.white : Colors.black;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 168,
        height: 221,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor,
          border: Border.all(color: Color(0xFFEBEBEB)),
        ),
        child: Column(children: [
          Column(
            children: [
              RadioButton(
                description: ageGroup,
                value: ageGroup,
                groupValue: _language,
                fillColor: Colors.white,
                onChanged: (value) => setState(
                  () => _language = value ?? '',
                ),
                textPosition: RadioButtonTextPosition.left,
                textStyle: TextStyle(
                  color: textColor,
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
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ))
            ],
          ),
        ]),
      ),
    );
  }
}
