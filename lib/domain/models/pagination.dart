import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T> with _$Pagination<T> {
  const Pagination._();

  const factory Pagination({
    @Default(0) int totalCount,
    @Default([]) List<T> value,
  }) = _Pagination<T>;

  int get maxPage {
    const perPage = 20;
    final maxPage = (totalCount / perPage).ceil();
    return min(100, maxPage);
  }
}
