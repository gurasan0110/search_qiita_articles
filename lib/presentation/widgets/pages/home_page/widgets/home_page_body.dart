import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/presentation/widgets/article_list_tile/article_list_tile.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_divider.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_progress_indicator.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_text.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/home_page/home_page_notifier.dart';
import 'package:search_qiita_articles/presentation/widgets/pagination_list_view.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      homePageNotifierProvider.select((s) => s.paginationS.valueS.exception),
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

    final isLoadingFirstPage = ref.watch(homePageNotifierProvider.select(
      (s) => s.paginationS.isLoadingFirstPage,
    ));

    if (isLoadingFirstPage) return Center(child: DProgressIndicator());

    final (articles, isLoadingNextPage) = ref.watch(
      homePageNotifierProvider.select((s) {
        final paginationS = s.paginationS;
        return (paginationS.valueS.value.value, paginationS.isLoadingNextPage);
      }),
    );

    return PaginationListView(
      articles,
      isLoadingNextPage: isLoadingNextPage,
      onRefresh: () => ref
          .read(homePageNotifierProvider.notifier)
          .researchFirstPageArticles(),
      onPagination: () async {
        await ref
            .read(homePageNotifierProvider.notifier)
            .searchNextPageArticles();
      },
      itemBuilder: (context, article) => ArticleListTile(article),
      separatorBuilder: (context) => DDivider(),
    );
  }
}
