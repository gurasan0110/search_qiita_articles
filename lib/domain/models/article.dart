import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/core/types.dart';
import 'package:search_qiita_articles/domain/converters/tags_converter.dart';
import 'package:search_qiita_articles/domain/models/user.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@Freezed(toJson: false)
class Article with _$Article {
  const factory Article({
    required int commentsCount,
    required int likesCount,
    required int stocksCount,
    @TagsConverter() required List<String> tags,
    required String title,
    required DateTime updatedAt,
    required Uri url,
    required User user,
  }) = _Article;

  factory Article.fromJson(Json json) => _$ArticleFromJson(json);
}
