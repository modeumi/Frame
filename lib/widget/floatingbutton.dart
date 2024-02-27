import 'package:flutter/material.dart';

class FloatingWidget extends StatefulWidget {
  const FloatingWidget({super.key});

  @override
  State<FloatingWidget> createState() => _FloatingWidgetState();
}

class _FloatingWidgetState extends State<FloatingWidget> {
  bool slot_active = false;

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
                child: Icon(
                  Icons.home_outlined,
                  color: Color(0xffFFFFFF),
                  size: 28,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 18,
          ),
          slot_active
              ? Container(
                  width: 263,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff000000)),
                )
              : Container(),
        ],
      ),
    );
  }
}
