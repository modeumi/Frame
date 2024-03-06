import 'package:flutter/material.dart';
import 'package:frame/widget/community/community_article.dart';
import 'package:frame/widget/community/community_banner.dart';
import 'package:frame/widget/community/community_filter.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
              child: Community_Article(),
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
