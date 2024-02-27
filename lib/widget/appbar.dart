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
      padding: EdgeInsets.symmetric(vertical: 8),
      child: widget.title == 'main'
          ? Row(
              children: [
                Container(
                  width: 80,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xff000000))),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 24,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.notifications_none,
                  size: 24,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.chat_outlined,
                  size: 24,
                )
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
                      Icon(
                        Icons.notifications_none,
                        size: 24,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.chat_outlined,
                        size: 24,
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
