import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/presentation/states/pagination_state.dart';

part 'search_page_state.freezed.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState({
    @Default(PaginationState()) PaginationState<Article> paginationState,
    @Default(1) int page,
    Exception? exception,
  }) = _SearchPageState;
}
