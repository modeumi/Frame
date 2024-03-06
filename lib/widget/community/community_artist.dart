import 'package:flutter/material.dart';
import 'package:frame/widget/community/artist_detail.dart';

class Community_Artist extends StatefulWidget {
  const Community_Artist({super.key});

  @override
  State<Community_Artist> createState() => _Community_ArtistState();
}

class _Community_ArtistState extends State<Community_Artist> {
  List<String> information_name = ['기안84', '윤민주', '최영미', '구자승'];
  Map<String, List<String>> type_category = {
    'slot_1': ['회화', '만화', '팝아트'],
    'slot_2': ['회화', '아크릴화'],
    'slot_3': ['회화', '아크릴화'],
    'slot_4': ['회화', '만화', '팝아트']
  };

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 375,
        margin: EdgeInsets.only(bottom: 30),
        child: Wrap(
          spacing: 8,
          runSpacing: 20,
          children: [
            for (int i = 0; i < information_name.length; i++)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Artist_Detail(),
                      ));
                },
                child: IntrinsicHeight(
                  child: Container(
                    width: 167.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 168,
                          height: 112,
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/community/artist_${i + 1}.png',
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/mypage/Favorite.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                information_name[i],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '작가',
                                style: TextStyle(
                                  color: Color(0xFF767676),
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 12,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/community/Geography.png',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '한국',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 12,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/community/Paint Palette.png',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              for (int j = 0;
                                  j < type_category['slot_${i + 1}']!.length;
                                  j++)
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 4, left: j == 0 ? 0 : 4),
                                      child: Text(
                                        type_category['slot_${i + 1}']![j],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    j !=
                                            type_category['slot_${i + 1}']!
                                                    .length -
                                                1
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                                'assets/community/Line_s.png'),
                                          )
                                        : Container()
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
