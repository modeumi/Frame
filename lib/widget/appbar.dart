import 'package:flutter/material.dart';

class AppbarBuild extends StatefulWidget {
  final String title;
  const AppbarBuild(this.title, {super.key});

  @override
  State<AppbarBuild> createState() => _AppbarBuildState();
}

class _AppbarBuildState extends State<AppbarBuild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 40,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: widget.title == 'main'
          ? Row(
              children: [
                Container(
                  width: 80,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/main/Frame 1437257016.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Spacer(),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/main/Search-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/main/Notification.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/main/Comments.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : Stack(
              children: [
                Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          'assets/main/Notification.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          'assets/main/Comments.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
