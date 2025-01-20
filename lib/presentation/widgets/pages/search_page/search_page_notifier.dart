import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_qiita_articles/application/services/article_service.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/search_page_s.dart';

part 'search_page_notifier.g.dart';

@Riverpod(dependencies: [])
class SearchPageNotifier extends _$SearchPageNotifier {
  SearchPageNotifier({String? query}) : _query = query;

  final String? _query;

  final _service = ArticleService();

  @override
  SearchPageS build() {
    listenSelf((previous, _) {
      if (previous == null) Future.microtask(_searchFirstPageArticles);
    });

    return SearchPageS();
  }

  Future<void> searchNextPageArticles() async {
    if (state.paginationS.isLoadingNextPage) return;

    final page = state.page + 1;
    if (state.paginationS.valueS.value.maxPage < page) return;

    state = state.copyWith.paginationS(isLoadingNextPage: true);
    await _searchArticles(page);
    state = state.copyWith.paginationS(isLoadingNextPage: false);
  }

  Future<void> researchFirstPageArticles() => _searchArticles(1);

  Future<void> _searchFirstPageArticles() async {
    if (state.paginationS.isLoadingFirstPage) return;
    state = state.copyWith.paginationS(isLoadingFirstPage: true);
    await _searchArticles(1);
    state = state.copyWith.paginationS(isLoadingFirstPage: false);
  }

  Future<void> _searchArticles(int page) async {
    try {
      final pagination = await _service.searchArticles(page, query: _query);
      final paginationS = state.paginationS;
      final oldArticles = paginationS.valueS.value.value;
      final articles = page == 1 ? <Article>[] : oldArticles;
      final newArticles = articles + pagination.value;
      final newPagination = pagination.copyWith(value: newArticles);
      final newPaginationS = paginationS.copyWith.valueS(value: newPagination);
      state = state.copyWith(page: page, paginationS: newPaginationS);
    } on Exception catch (exception) {
      state = state.copyWith.paginationS.valueS(exception: exception);
    }
  }
}
