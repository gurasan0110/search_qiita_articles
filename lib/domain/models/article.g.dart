// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      commentsCount: (json['comments_count'] as num).toInt(),
      likesCount: (json['likes_count'] as num).toInt(),
      stocksCount: (json['stocks_count'] as num).toInt(),
      tags: const TagsConverter().fromJson(json['tags'] as List),
      title: json['title'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      url: Uri.parse(json['url'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );
