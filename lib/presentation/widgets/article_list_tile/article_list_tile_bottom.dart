import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/extensions/color_extension.dart';
import 'package:search_qiita_articles/presentation/gen/assets.gen.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_text.dart';

class ArticleListTileBottom extends StatelessWidget {
  const ArticleListTileBottom(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Row(
          spacing: 4,
          children: [
            Assets.images.like.svg(
              width: 20,
              height: 20,
              colorFilter: AppColors.mediumEmphasis.filter,
            ),
            DText(article.likesCount.toString()),
          ],
        ),
        Row(
          spacing: 4,
          children: [
            Assets.images.stock.svg(
              width: 20,
              height: 20,
              colorFilter: AppColors.mediumEmphasis.filter,
            ),
            DText(article.stocksCount.toString()),
          ],
        ),
        Row(
          spacing: 4,
          children: [
            Icon(
              Icons.chat_bubble,
              size: 18,
              color: AppColors.mediumEmphasis,
            ),
            DText(article.commentsCount.toString()),
          ],
        ),
      ],
    );
  }
}
