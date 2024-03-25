import 'dart:math';

import 'package:flutter/material.dart';

class SelectPersonnel extends StatefulWidget {
  const SelectPersonnel({super.key});

  @override
  State<SelectPersonnel> createState() => _SelectPersonnelState();
}

class _SelectPersonnelState extends State<SelectPersonnel> {
  bool _isCkecked = false;
  int adultcount = 0;
  int childcount = 0;
  int youthcount = 0;

  void incrementAdultCount() {
    setState(() {
      adultcount++;
    });
  }

  void decrementAdultCount() {
    if (adultcount > 0) {
      setState(() {
        adultcount--;
      });
    }
  }

  void incrementChildCount() {
    setState(() {
      childcount++;
    });
  }

  void decrementChildCount() {
    if (childcount > 0) {
      setState(() {
        childcount--;
      });
    }
  }

  void incrementYouthCount() {
    setState(() {
      youthcount++;
    });
  }

  void decrementYouthCount() {
    if (youthcount > 0) {
      setState(() {
        youthcount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalCount = adultcount + youthcount + childcount;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          '인원 선택',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: 343,
          height: 166,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xFFECECEC))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '성인',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 88,
                      ),
                      Container(
                        width: 50,
                        child: Text(
                          '12,000원',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              decrementAdultCount();
                            });
                          },
                          child: Image.asset('assets/reservation/-.png')),
                      Container(
                        width: 36,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFECECEC))),
                        child: Center(
                            child: Text(
                          '$adultcount',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              incrementAdultCount();
                            });
                          },
                          child: Image.asset('assets/reservation/+.png')),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '청소년',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Container(
                        width: 50,
                        child: Text(
                          '8,000원',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              decrementYouthCount();
                            });
                          },
                          child: Image.asset('assets/reservation/-.png')),
                      Container(
                        width: 36,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFECECEC))),
                        child: Center(
                            child: Text(
                          '$youthcount',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              incrementYouthCount();
                            });
                          },
                          child: Image.asset('assets/reservation/+.png')),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '유아 및 어린이',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                        width: 50,
                        child: Text(
                          '6,000원',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              decrementChildCount();
                            });
                          },
                          child: Image.asset('assets/reservation/-.png')),
                      Container(
                        width: 36,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFECECEC))),
                        child: Center(
                            child: Text(
                          '$childcount',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              incrementChildCount();
                            });
                          },
                          child: Image.asset('assets/reservation/+.png')),
                    ],
                  ),
                ),
                Container(
                  width: 343,
                  height: 0.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFECECEC))),
                ),
                Container(
                  width: 295,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '총원',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        (adultcount > 0 ? '성인${adultcount}명, ' : '') +
                            (youthcount > 0 ? '청소년${youthcount}명, ' : '') +
                            (childcount > 0 ? '유아 및 어린이${childcount}명, ' : ''),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
          child: Row(
            children: [
              Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: _isCkecked,
                activeColor: Colors.black,
                onChanged: (value) {
                  setState(
                    () {
                      _isCkecked = value!;
                    },
                  );
                },
              ),
              Text(
                '관람시 유의사항 동의',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                '전문 보기',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset('assets/reservation/Forward.png')
            ],
          ),
        ),
      ],
    );
  }
}
