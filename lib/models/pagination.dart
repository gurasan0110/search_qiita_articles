import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/constants.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T> with _$Pagination<T> {
  const Pagination._();

  const factory Pagination({
    @Default(0) int totalCount,
    @Default([]) List<T> value,
  }) = _Pagination;

  int get maxPage {
    final maxPage = (totalCount / kPerPage).ceil();
    return min(100, maxPage);
  }
}
