import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_qiita_articles/types.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(toJson: false)
class User with _$User {
  const factory User({
    required String id,
    @Default('') String name,
    @Default('') String organization,
    required String profileImageUrl,
  }) = _User;

  factory User.fromJson(Json json) => _$UserFromJson(json);
}
