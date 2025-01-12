import 'package:search_qiita_articles/models/article.dart';
import 'package:search_qiita_articles/models/pagination.dart';
import 'package:search_qiita_articles/models/query_parameters.dart';
import 'package:search_qiita_articles/repositories/article_repository.dart';

class ArticleService {
  ArticleService();

  final _repository = ArticleRepository();

  Future<Pagination<Article>> searchArticles(QueryParameters queryParameters) {
    return _repository.searchArticles(queryParameters);
  }
}
