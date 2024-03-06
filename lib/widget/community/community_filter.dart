import 'package:flutter/material.dart';

class Community_Filter extends StatefulWidget {
  const Community_Filter({super.key});

  @override
  State<Community_Filter> createState() => _Community_FilterState();
}

class _Community_FilterState extends State<Community_Filter> {
  Map<String, bool> filter = {'인기순': true, '최신순': false};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 49,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 204, 204, 204),
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/community/Slider.png'),
          ),
          Spacer(),
          for (String text in filter.keys)
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        filter.forEach((key, value) {
                          filter[key] = false;
                        });
                        filter[text] = true;
                      });
                    },
                    child: Container(
                      width: 64,
                      height: 34,
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: filter[text]!
                                ? Colors.black
                                : Color(0xFF767676),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: filter[text]!
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                    )),
                filter.keys.toList().indexOf(text) == 0
                    ? Container(
                        width: 1,
                        height: 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: Color(0xff767676))),
                      )
                    : Container()
              ],
            )
        ],
      ),
    );
  }
}
