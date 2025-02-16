import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/presentation/widgets/article_list_tile/article_list_tile.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_divider.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_progress_indicator.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_text.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/search_page_notifier.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/widgets/search_page_search_results.dart';
import 'package:search_qiita_articles/presentation/widgets/pagination_list_view.dart';

class SearchPageBody extends ConsumerWidget {
  const SearchPageBody({super.key, this.query});

  final String? query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      searchPageNotifierProvider.select((s) => s.exception),
      (_, exception) {
        final scaffoldMessengerS = ScaffoldMessenger.of(context);
        scaffoldMessengerS.showMaterialBanner(
          MaterialBanner(
            content: DefaultText(exception.toString()),
            actions: [
              FilledButton.tonal(
                onPressed: scaffoldMessengerS.hideCurrentMaterialBanner,
                child: DefaultText('閉じる'),
              ),
            ],
          ),
        );
      },
    );

    final pagination = ref.watch(searchPageNotifierProvider.select(
      (s) => s.paginationState.pagination,
    ));

    if (pagination == null) return Center(child: DefaultProgressIndicator());

    final isLoadingNextPage = ref.watch(searchPageNotifierProvider.select(
      (s) => s.paginationState.isLoadingNextPage,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchPageSearchResults(
          query: query,
          totalCount: pagination.totalCount,
        ),
        Expanded(
          child: PaginationListView(
            pagination.value,
            isLoadingNextPage: isLoadingNextPage,
            onRefresh: ref
                .read(searchPageNotifierProvider.notifier)
                .searchFirstPageArticles,
            onPagination: ref
                .read(searchPageNotifierProvider.notifier)
                .searchNextPageArticles,
            itemBuilder: (context, article) => ArticleListTile(article),
            separatorBuilder: (context) => DefaultDivider(),
          ),
        ),
      ],
    );
  }
}
