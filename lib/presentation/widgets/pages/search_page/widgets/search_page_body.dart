import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/presentation/widgets/article_list_tile/article_list_tile.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_divider.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_progress_indicator.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_text.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/search_page_notifier.dart';
import 'package:search_qiita_articles/presentation/widgets/pagination_list_view.dart';

class SearchPageBody extends ConsumerWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      searchPageNotifierProvider.select((s) => s.exception),
      (_, exception) {
        final scaffoldMessengerS = ScaffoldMessenger.of(context);
        scaffoldMessengerS.showMaterialBanner(
          MaterialBanner(
            content: DText(exception.toString()),
            actions: [
              FilledButton.tonal(
                onPressed: scaffoldMessengerS.hideCurrentMaterialBanner,
                child: DText('閉じる'),
              ),
            ],
          ),
        );
      },
    );

    final pagination = ref.watch(searchPageNotifierProvider.select(
      (s) => s.paginationState.pagination,
    ));

    if (pagination == null) return Center(child: DProgressIndicator());

    final isLoadingNextPage = ref.watch(searchPageNotifierProvider.select(
      (s) => s.paginationState.isLoadingNextPage,
    ));

    return PaginationListView(
      pagination.value,
      isLoadingNextPage: isLoadingNextPage,
      onRefresh: () => ref
          .read(searchPageNotifierProvider.notifier)
          .searchFirstPageArticles(),
      onPagination: () => ref
          .read(searchPageNotifierProvider.notifier)
          .searchNextPageArticles(),
      itemBuilder: (context, article) => ArticleListTile(article),
      separatorBuilder: (context) => DDivider(),
    );
  }
}
