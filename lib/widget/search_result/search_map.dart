import 'package:flutter/material.dart';
import 'package:frame/widget/search_result/search_map_detail.dart';

class Search_Map extends StatefulWidget {
  const Search_Map({super.key});

  @override
  State<Search_Map> createState() => _Search_MapState();
}

class _Search_MapState extends State<Search_Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 44),
        width: 375,
        height: 812,
        child: Stack(
          children: [
            Container(
              width: 375,
              height: 682,
              child: Image.asset(
                'assets/search/map.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
                top: 85,
                left: 131,
                child: Image.asset('assets/search/Group 1437256332.png')),
            Positioned(
                top: 168,
                right: 50.5,
                child: Image.asset('assets/search/Group 1437256333.png')),
            Positioned(
                top: 306,
                left: 186,
                child: Image.asset('assets/search/Group 1437256331.png')),
            Positioned(
                top: 433,
                left: 29,
                child: GestureDetector(
                    onTap: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return Search_Map_Detail();
                        },
                      );
                    },
                    child: Image.asset('assets/search/Group 1437256334.png'))),
            Positioned(
                top: 504,
                right: 36.5,
                child: Image.asset('assets/search/Group 1437256335.png')),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 375,
                height: 85,
                padding: EdgeInsets.only(top: 20, left: 21),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: Center(
                          child: Image.asset('assets/search/Left.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 263,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child:
                              Image.asset('assets/search/Image File Add.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
