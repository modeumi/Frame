import 'dart:async';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Test_Page extends StatefulWidget {
  const Test_Page({super.key});

  @override
  State<Test_Page> createState() => _Test_PageState();
}

class _Test_PageState extends State<Test_Page> {
  bool state = false;
  bool state2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/main/back_2.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 1; i < 8; i++)
                    Stack(
                      children: [
                        Opacity(
                          opacity: 0.05,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(3, 3),
                                )
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              state = !state;
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: state ? Colors.white : Colors.transparent,
                              border: GradientBoxBorder(
                                width: 1,
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(0.5),
                                    Colors.white.withOpacity(0.2)
                                  ],
                                ),
                              ),
                            ),
                            child: ClipOval(
                              child: state
                                  ? Container(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        "assets/main/Ellipse 120.png",
                                      ),
                                    )
                                  : BlurryContainer(
                                      blur: 12,
                                      elevation: 0,
                                      child: Image.asset(
                                        "assets/main/Ellipse 120.png",
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  state2 = !state2;
                });
                Timer(Duration(milliseconds: 100), () {
                  setState(() {
                    state2 = !state2;
                  });
                });
              },
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.05,
                    child: Container(
                      margin: EdgeInsets.all(16),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(3, 3),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: state2
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent,
                      border: GradientBoxBorder(
                        width: 1,
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.2)
                          ],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: state2
                        ? Container()
                        : BlurryContainer(
                            blur: 12,
                            elevation: 0,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
