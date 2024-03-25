import 'package:flutter/material.dart';
import 'package:frame/reservation/reservation_title.dart';
import 'package:frame/reservation/select_date.dart';
import 'package:frame/reservation/select_personnel.dart';
import 'package:frame/reservation/select_time.dart';
import 'package:frame/screen/reservation.dart';

class RevervationDate extends StatefulWidget {
  const RevervationDate({super.key});

  @override
  State<RevervationDate> createState() => _RevervationDateState();
}

class _RevervationDateState extends State<RevervationDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (ReservationPage())));
              },
              child: Image.asset('assets/community/Back.png')),
          title: Text(
            '예약',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: 390,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ReservationTitle(),
              SelectDate(),
              SelectTime(),
              SelectPersonnel(),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 343,
                height: 52,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    '12,000원 결제하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
