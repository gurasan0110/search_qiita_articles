import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_app_bar/d_app_bar.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_app_bar/d_app_bar_bottom.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/search_page_notifier.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/widgets/search_page_body.dart';
import 'package:search_qiita_articles/presentation/widgets/search_text_field.dart';

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
        appBar: DAppBar(
          bottom: DAppBarBottom(
            child: SearchTextField(onSubmitted: (query) async {
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
        body: SearchPageBody(),
      ),
    );
  }
}
