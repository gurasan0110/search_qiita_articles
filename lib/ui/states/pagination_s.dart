import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/models/pagination.dart';
import 'package:search_qiita_articles/ui/states/value_s.dart';

part 'pagination_s.freezed.dart';

@freezed
class PaginationS<T> with _$PaginationS<T> {
  const factory PaginationS({
    required ValueS<Pagination<T>> valueS,
    @Default(false) bool isLoadingFirstPage,
    @Default(false) bool isLoadingNextPage,
  }) = _PaginationS;
}
