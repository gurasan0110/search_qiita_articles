import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_qiita_articles/application/services/article_service.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/home_page/home_page_s.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  HomePageNotifier();

  final _service = ArticleService();

  @override
  HomePageS build() {
    listenSelf((previous, _) {
      if (previous == null) Future.microtask(searchFirstPageArticles);
    });

    return HomePageS();
  }

  Future<void> setQuery(String query) async {
    state = state.copyWith.queryParameters(query: query);
    await searchFirstPageArticles();
  }

  Future<void> searchFirstPageArticles() async {
    if (state.paginationS.isLoadingFirstPage) return;
    state = state.copyWith.paginationS(isLoadingFirstPage: true);
    await _searchArticles(1);
    state = state.copyWith.paginationS(isLoadingFirstPage: false);
  }

  Future<void> searchNextPageArticles() async {
    if (state.paginationS.isLoadingNextPage) return;

    final page = state.queryParameters.page + 1;
    if (state.paginationS.valueS.value.maxPage < page) return;

    state = state.copyWith.paginationS(isLoadingNextPage: true);
    await _searchArticles(page);
    state = state.copyWith.paginationS(isLoadingNextPage: false);
  }

  Future<void> researchFirstPageArticles() => _searchArticles(1);

  Future<void> _searchArticles(int page) async {
    if (state.queryParameters.query?.trim().isEmpty == true) return;

    final queryParameters = state.queryParameters.copyWith(page: page);

    try {
      final pagination = await _service.searchArticles(queryParameters);
      final paginationS = state.paginationS;
      final oldArticles = paginationS.valueS.value.value;
      final articles = page == 1 ? <Article>[] : oldArticles;
      final newArticles = articles + pagination.value;
      final newPagination = pagination.copyWith(value: newArticles);
      final newPaginationS = paginationS.copyWith.valueS(value: newPagination);
      state = state.copyWith(
        queryParameters: queryParameters,
        paginationS: newPaginationS,
      );
    } on Exception catch (exception) {
      state = state.copyWith.paginationS.valueS(exception: exception);
    }
  }
}
