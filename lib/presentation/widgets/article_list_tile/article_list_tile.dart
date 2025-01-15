import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/widgets/article_list_tile/article_list_tile_bottom.dart';
import 'package:search_qiita_articles/presentation/widgets/article_list_tile/article_list_tile_header.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_text.dart';
import 'package:search_qiita_articles/presentation/widgets/tag_chips/tag_chips.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          ArticleListTileHeader(article),
          DText(article.title, size: 16, weight: FontWeight.bold, maxLines: 3),
          TagChips(article.tags),
          ArticleListTileBottom(article),
        ],
      ),
    );
  }
}
