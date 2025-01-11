import 'package:search_qiita_articles/data/repositories/article_repository.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/domain/models/pagination.dart';
import 'package:search_qiita_articles/domain/models/query_parameters.dart';

class ArticleService {
  ArticleService();

  final _repository = ArticleRepository();

  Future<Pagination<Article>> searchArticles(QueryParameters queryParameters) {
    return _repository.searchArticles(queryParameters);
  }
}
