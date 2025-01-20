import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/domain/models/pagination.dart';
import 'package:search_qiita_articles/presentation/states/pagination_s.dart';
import 'package:search_qiita_articles/presentation/states/value_s.dart';

part 'search_page_s.freezed.dart';

@freezed
class SearchPageS with _$SearchPageS {
  const factory SearchPageS({
    @Default(1) int page,
    @Default(PaginationS(valueS: ValueS(value: Pagination())))
    PaginationS<Article> paginationS,
  }) = _SearchPageS;
}
