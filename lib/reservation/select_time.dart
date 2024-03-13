import 'package:flutter/material.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({Key? key}) : super(key: key);

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  String? selectTime;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 16,
      ),
      Text(
        '시간 선택',
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
      Center(
          child: Container(
              width: 343,
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFECECEC)),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 190,
                        height: 30,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '오전',
                                style: TextStyle(
                                  color: Color(0xFF767676),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              for (String time in ['10:00', '11:00'])
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectTime = time;
                                    });
                                  },
                                  child: Container(
                                    width: 63,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: selectTime == time
                                          ? Colors.black
                                          : Colors.white,
                                      border:
                                          Border.all(color: Color(0xFFECECEC)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        time,
                                        style: TextStyle(
                                          color: selectTime == time
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ]),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 343,
                        height: 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFECECEC)),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 260,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '오후',
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            for (String time in ['12:00', '13:00', '14:00'])
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectTime = time;
                                  });
                                },
                                child: Container(
                                  width: 63,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: selectTime == time
                                        ? Colors.black
                                        : Colors.white,
                                    border:
                                        Border.all(color: Color(0xFFECECEC)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      time,
                                      style: TextStyle(
                                        color: selectTime == time
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 260,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 53,
                            ),
                            for (String time in ['15:00', '16:00', '17:00'])
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectTime = time;
                                  });
                                },
                                child: Container(
                                  width: 63,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: selectTime == time
                                        ? Colors.black
                                        : Colors.white,
                                    border:
                                        Border.all(color: Color(0xFFECECEC)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      time,
                                      style: TextStyle(
                                        color: selectTime == time
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ))))
    ]);
  }
}
