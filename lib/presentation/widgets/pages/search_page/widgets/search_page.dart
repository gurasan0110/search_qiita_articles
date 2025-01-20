import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_app_bar/default_app_bar.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_app_bar/default_app_bar_bottom.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/search_page_notifier.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/widgets/search_page_body.dart';
import 'package:search_qiita_articles/presentation/widgets/search_field/search_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key, this.query});

  final String? query;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        searchPageNotifierProvider.overrideWith(
          () => SearchPageNotifier(query: query),
        ),
      ],
      child: Scaffold(
        appBar: DefaultAppBar(
          bottom: DefaultAppBarBottom(
            child: SearchField(onSubmitted: (query) async {
              if (query.trim().isEmpty) return;
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(query: query),
                ),
              );
            }),
          ),
        ),
        body: SearchPageBody(query: query),
        backgroundColor: AppColors.white,
      ),
    );
  }
}
