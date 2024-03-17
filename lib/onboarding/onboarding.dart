import 'package:flutter/material.dart';
import 'package:frame/onboarding/onboarding1.dart';
import 'package:group_radio_button/group_radio_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

enum Language { male, female }

class _OnBoardingPageState extends State<OnBoardingPage> {
  String __selectedGenderGroup = "";

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildGenderGroupConatiner(
                  genderGroup: "남성",
                  imagePath: "assets/Onboarding/Mask group-1.png"),
              _buildGenderGroupConatiner(
                  genderGroup: "여성",
                  imagePath: "assets/Onboarding/Mask group.png"),
            ],
          )
        ]),
      ),
      bottomNavigationBar: Stack(children: [
        Container(
          height: 36,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 1,
                offset: Offset(0, -2),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomAppBar(
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
                    backgroundColor: Colors.black,
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
        ),
      ]),
    );
  }

  Widget _buildGenderGroupConatiner(
      {required String genderGroup, required String imagePath}) {
    bool isSelected = __selectedGenderGroup == genderGroup;
    Color containerColor = isSelected ? Colors.black : Colors.white;
    Color textColor = isSelected ? Colors.white : Colors.black;
    return InkWell(
      onTap: () {
        setState(() {
          __selectedGenderGroup = genderGroup;
        });
      },
      child: Container(
        width: 168,
        height: 221,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor,
          border: Border.all(color: Color(0xFFEBEBEB)),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  width: 148,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        genderGroup,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600),
                      ),
                      Radio(
                        value: genderGroup,
                        groupValue: __selectedGenderGroup,
                        activeColor: textColor,
                        onChanged: (value) {
                          setState(() {
                            __selectedGenderGroup = genderGroup;
                          });
                        },
                      ),
                    ],
                  ),
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
            ]),
      ),
    );
  }
}
