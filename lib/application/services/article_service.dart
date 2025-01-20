import 'package:search_qiita_articles/data/repositories/article_repository.dart';
import 'package:search_qiita_articles/domain/models/article.dart';
import 'package:search_qiita_articles/domain/models/pagination.dart';

class ArticleService {
  ArticleService();

  final _repository = ArticleRepository();

  Future<Pagination<Article>> searchArticles(int page, {String? query}) {
    return _repository.searchArticles(page, query: query);
  }
}
