import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_qiita_articles/application/services/article_service.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/search_page_state.dart';

part 'search_page_notifier.g.dart';

@Riverpod(dependencies: [])
class SearchPageNotifier extends _$SearchPageNotifier {
  SearchPageNotifier({String? query}) : _query = query;

  final String? _query;

  final _service = ArticleService();

  @override
  SearchPageState build() {
    listenSelf((previous, _) {
      if (previous == null) Future.microtask(searchFirstPageArticles);
    });

    return SearchPageState();
  }

  Future<void> searchFirstPageArticles() => _searchArticles(1);

  Future<void> searchNextPageArticles() async {
    if (state.paginationState.isLoadingNextPage) return;

    final page = state.page + 1;
    if (state.paginationState.pagination!.maxPage < page) return;

    state = state.copyWith.paginationState(isLoadingNextPage: true);
    await _searchArticles(page);
    state = state.copyWith.paginationState(isLoadingNextPage: false);
  }

  Future<void> _searchArticles(int page) async {
    try {
      final pagination = await _service.searchArticles(page, query: _query);
      final paginationState = state.paginationState;
      final oldArticles = paginationState.pagination?.value;
      final articles = page == 1 ? <Article>[] : oldArticles!;
      final newArticles = articles + pagination.value;
      final newPagination = pagination.copyWith(value: newArticles);
      final newPaginationState = paginationState.copyWith(
        pagination: newPagination,
      );
      state = state.copyWith(page: page, paginationState: newPaginationState);
    } on Exception catch (exception) {
      state = state.copyWith(exception: exception);
    }
  }
}
