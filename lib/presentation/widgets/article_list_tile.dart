import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(article.title),
    );
  }
}
