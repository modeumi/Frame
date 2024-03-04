import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<bool> _isSelected = List.generate(9, (index) => false);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 1),
        itemCount: 9,
        itemBuilder: (BuildContext context, index) {
          String imagePath = _getImagePath(index);
          String labelText = _getText(index);
          Color textColor = _isSelected[index] ? Colors.white : Colors.black;
          Color imageColor = _isSelected[index] ? Colors.white : Colors.black;

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                });
              },
              child: Container(
                  width: 109,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: _isSelected[index]
                              ? Colors.white
                              : Color(0xFFEBEBEB)),
                      borderRadius: BorderRadius.circular(20),
                      color: _isSelected[index] ? Colors.black : Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(imageColor, BlendMode.srcIn),
                        child: Image.asset(
                          imagePath,
                        ),
                      ),
                      Center(
                        child: Text(
                          labelText,
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  )),
            ),
          );
        });
  }
}

String _getImagePath(int index) {
  switch (index % 9) {
    case 0:
      return 'assets/Onboarding/Paint Palette With Brush.png';
    case 1:
      return 'assets/Onboarding/Pottery.png';
    case 2:
      return 'assets/Onboarding/Building.png';
    case 3:
      return 'assets/Onboarding/Create Icon.png';
    case 4:
      return 'assets/Onboarding/Paintbrush.png';
    case 5:
      return 'assets/Onboarding/Knitting.png';
    case 6:
      return 'assets/Onboarding/Tom.png';
    case 7:
      return 'assets/Onboarding/Manga.png';
    default:
      return 'assets/Onboarding/SLR Camera.png';
  }
}

String _getText(int index) {
  switch (index % 9) {
    case 0:
      return '회화';
    case 1:
      return '조소';
    case 2:
      return '건축';
    case 3:
      return '디자인';
    case 4:
      return '서예';
    case 5:
      return '공예';
    case 6:
      return '만화';
    case 7:
      return '일러스트';
    default:
      return '사진';
  }
}
