import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_parameters.freezed.dart';
part 'query_parameters.g.dart';

@Freezed(toJson: true)
class QueryParameters with _$QueryParameters {
  const factory QueryParameters({
    @Default(1) int page,
    String? query,
  }) = _QueryParameters;
}
