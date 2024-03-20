import 'package:flutter/material.dart';

class RecordUploadWidget extends StatefulWidget {
  const RecordUploadWidget({super.key});

  @override
  State<RecordUploadWidget> createState() => _RecordUploadState();
}

class _RecordUploadState extends State<RecordUploadWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 395,
      height: 375,
      decoration: BoxDecoration(color: Color(0xFF767676)),
      child: Stack(children: [
        Positioned(
          top: 5,
          right: 10,
          child: Text(
            '*사진은 최대 10개까지 업로드 할 수 있어요.',
            style: TextStyle(
              color: Color(0xFFEBEBEB),
              fontSize: 10,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
            top: 150,
            left: 160,
            child: Image.asset('assets/main/Image File Add.png')),
        Positioned(
            bottom: 80, right: 20, child: Image.asset('assets/main/Union.png')),
        Positioned(
          bottom: 65,
          right: 13,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
            bottom: 110,
            right: 100,
            child: Text(
              '+',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            )),
        Positioned(
            bottom: 50,
            left: 5,
            child: Text(
              '태그 추가',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            )),
        Positioned(
            bottom: 2,
            left: 5,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: 383,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEBEBEB),
                ),
              ),
            )),
        Positioned(
            bottom: 12,
            left: 15,
            child: Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFEBEBEB)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )),
        Positioned(
            bottom: 94,
            right: 23,
            child: Center(
              child: Text(
                '*원하는 위치에 전시 정보를 추가해 주세요.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
        Positioned(
            bottom: 5,
            right: 15,
            child: Text(
              '*추가된 태그가 노출되는 영역이에요.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            )),
      ]),
    );
  }
}
