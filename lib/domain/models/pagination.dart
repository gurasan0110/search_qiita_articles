import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T> with _$Pagination<T> {
  const Pagination._();

  const factory Pagination({
    required int totalCount,
    required List<T> value,
  }) = _Pagination<T>;

  int get maxPage {
    const perPage = 20;
    const maxMaxPage = 100;
    final maxPage = (totalCount / perPage).ceil();
    return min(maxPage, maxMaxPage);
  }
}
