import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/formatters.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_text.dart';
import 'package:search_qiita_articles/presentation/widgets/profile_image.dart';

class ArticleListTileHeader extends StatelessWidget {
  const ArticleListTileHeader(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        ProfileImage(article.user.profileImageUrl),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 4,
                children: [
                  Flexible(child: DText('@${article.user.id}', maxLines: 1)),
                  if (article.user.name.isNotEmpty)
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DText('('),
                          Flexible(
                            child: DText(article.user.name, maxLines: 1),
                          ),
                          DText(')'),
                        ],
                      ),
                    ),
                ],
              ),
              DText(
                Formatters.date.format(article.updatedAt),
                color: AppColors.mediumEmphasis,
                size: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
