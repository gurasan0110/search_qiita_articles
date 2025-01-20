import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/gen/strings.g.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_text.dart';

class SearchPageSearchResults extends StatelessWidget {
  const SearchPageSearchResults({
    super.key,
    this.query,
    required this.totalCount,
  });

  final String? query;
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: double.infinity,
      child: SafeArea(
        bottom: false,
        minimum: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: DefaultText(
          query == null
              ? t.searchResults.queryIsNull(totalCount: totalCount)
              : t.searchResults.queryIsNotNull(
                  query: query!,
                  totalCount: totalCount,
                ),
          color: AppColors.mediumEmphasis,
          weight: FontWeight.bold,
          maxLines: 1,
        ),
      ),
    );
  }
}
