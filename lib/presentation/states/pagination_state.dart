import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/domain/models/pagination.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState({
    Pagination<T>? pagination,
    @Default(false) bool isLoadingNextPage,
  }) = _PaginationState<T>;
}
