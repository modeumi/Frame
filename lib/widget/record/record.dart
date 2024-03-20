import 'package:flutter/material.dart';
import 'package:frame/widget/floatingbutton.dart';
import 'package:frame/widget/record/button.dart';
import 'package:frame/widget/record/record_upload.dart';

class RocordPage extends StatefulWidget {
  const RocordPage({super.key});

  @override
  State<RocordPage> createState() => _RocordPageState();
}

class _RocordPageState extends State<RocordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        '기록작성',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w600,
        ),
      )),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            RecordUploadWidget(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 359,
              height: 84,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEBEBEB)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Center(
                child: Text(
                  '내용을 입력해 주세요',
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    '*사진 별로 작품에 대한 정보나 감상을 입력할 수 있어요.',
                    style: TextStyle(
                      color: Color(0xFF767676),
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: 390,
        height: 192,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 1,
                offset: Offset(0, -1),
                spreadRadius: 0,
              )
            ]),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          BouttonWidget(),
          SizedBox(
            height: 30,
          ),
          FloatingWidget()
        ]),
      ),
    );
  }
}
