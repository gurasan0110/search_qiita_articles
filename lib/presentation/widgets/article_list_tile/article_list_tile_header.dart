import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/formatters.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_text.dart';
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
                  Flexible(
                    child: DefaultText('@${article.user.id}', maxLines: 1),
                  ),
                  if (article.user.name.isNotEmpty)
                    Flexible(
                      child: Row(children: [
                        DefaultText('('),
                        Flexible(
                          child: DefaultText(article.user.name, maxLines: 1),
                        ),
                        DefaultText(')'),
                      ]),
                    ),
                ],
              ),
              DefaultText(
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
