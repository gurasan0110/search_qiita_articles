import 'package:search_qiita_articles/core/types.dart';
import 'package:search_qiita_articles/data/d_dio.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/domain/models/pagination.dart';
import 'package:search_qiita_articles/domain/models/query_parameters.dart';

class ArticleRepository {
  ArticleRepository();

  final _dio = DDio();

  Future<Pagination<Article>> searchArticles(
    QueryParameters queryParameters,
  ) async {
    final response = await _dio.get<List>(
      '/items',
      queryParameters: queryParameters.toJson(),
    );

    final totalCountString = response.headers.value('Total-Count')!;
    final totalCount = int.parse(totalCountString);

    final json = response.data!.cast<Json>();
    final articles = json.map(Article.fromJson).toList();

    return Pagination(totalCount: totalCount, value: articles);
  }
}
