import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/widgets/article_list_tile/article_list_tile_header.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ArticleListTileHeader(article);
  }
}
