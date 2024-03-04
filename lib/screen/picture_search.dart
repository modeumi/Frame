import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frame/screen/search_result.dart';

class Picture_Search extends StatefulWidget {
  const Picture_Search({super.key});

  @override
  State<Picture_Search> createState() => _Picture_SearchState();
}

class _Picture_SearchState extends State<Picture_Search> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Container(
      color: Colors.black,
      child: Scaffold(
        body: Container(
          width: 375,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/search/file 1.png'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: 375,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          '사진 검색',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Image.asset(
                          'assets/search/Rotate Camera.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 105,
                left: 157,
                child: GestureDetector(
                  onTap: () async {
                    await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return Search_Result();
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/search/Group 1437256481.png',
                    width: 62,
                    height: 62,
                  ),
                ),
              ),
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
      ),
    );
  }
}
