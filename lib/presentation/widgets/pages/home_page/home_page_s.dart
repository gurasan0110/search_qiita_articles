import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/domain/models/pagination.dart';
import 'package:search_qiita_articles/domain/models/query_parameters.dart';
import 'package:search_qiita_articles/presentation/states/pagination_s.dart';
import 'package:search_qiita_articles/presentation/states/value_s.dart';

part 'home_page_s.freezed.dart';

@freezed
class HomePageS with _$HomePageS {
  const factory HomePageS({
    @Default(QueryParameters()) QueryParameters queryParameters,
    @Default(PaginationS(valueS: ValueS(value: Pagination())))
    PaginationS<Article> paginationS,
  }) = _HomePageS;
}
