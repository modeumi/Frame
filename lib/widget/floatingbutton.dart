import 'package:flutter/material.dart';
import 'package:frame/screen/search.dart';

class FloatingWidget extends StatefulWidget {
  const FloatingWidget({super.key});

  @override
  State<FloatingWidget> createState() => _FloatingWidgetState();
}

class _FloatingWidgetState extends State<FloatingWidget> {
  bool slot_active = false;
  Map<String, bool> sub_slot = {
    'Search': false,
    'Chat': false,
    'Ticket': false,
    'User': false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 343,
      child: Row(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              setState(() {
                slot_active = !slot_active;
                sub_slot.forEach((key, value) {
                  sub_slot[key] = false;
                });
              });
            },
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff000000),
              ),
              child: Center(
                  child: Image.asset(slot_active
                      ? 'assets/main/Home.png'
                      : 'assets/main/Plus Math.png')),
            ),
          ),
          SizedBox(
            width: 18,
          ),
          slot_active
              ? Container(
                  width: 263,
                  height: 52,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff000000)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (String text in sub_slot.keys)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                sub_slot.forEach((key, value) {
                                  sub_slot[key] = false;
                                });
                                sub_slot[text] = true;
                              });
                              if (text == 'Search') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Search(),
                                    ));
                              }
                            },
                            child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(sub_slot[text]!
                                      ? 0xffffffff
                                      : 0xff000000),
                                  image: DecorationImage(
                                    image: AssetImage(sub_slot[text]!
                                        ? 'assets/main/${text}-1.png'
                                        : 'assets/main/${text}.png'),
                                  )),
                            ),
                          )
                      ]),
                )
              : Container(),
        ],
      ),
    );
  }
}
