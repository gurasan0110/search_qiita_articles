import 'package:flutter/material.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/formatters.dart';
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
                    child: Text(
                      '@${article.user.id}',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (article.user.name.isNotEmpty)
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('('),
                          Flexible(
                            child: Text(
                              article.user.name,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(')'),
                        ],
                      ),
                    ),
                  if (article.user.organization.isNotEmpty)
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          Text('in'),
                          Flexible(
                            child: Text(
                              article.user.organization,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              Text(Formatters.date.format(article.updatedAt)),
            ],
          ),
        ),
      ],
    );
  }
}
