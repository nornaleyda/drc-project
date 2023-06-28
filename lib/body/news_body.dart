import 'package:flutter/material.dart';
import '../model/news_model.dart';
import '../widget/news_body_card.dart';

class NewsBody extends StatelessWidget {
  final NewsItemModel news;

  const NewsBody({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Api call')),
      body: ListView(
        children: [
          NewsCardBody(
            title: news.title,
            source: news.source,
            image: news.imageUrl,
            body: news.body,
          ),
        ],
      ),
    );
  }
}