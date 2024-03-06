import 'package:flutter/material.dart';
import 'package:frame/widget/community/community_Artist.dart';
import 'package:frame/widget/community/community_banner.dart';
import 'package:frame/widget/community/community_filter.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Community_Banner(),
            Community_Filter(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Community_Artist(),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
